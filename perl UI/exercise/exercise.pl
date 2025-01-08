use strict;
use warnings;

sub update_exercise_add{
    my ($values) = @_;
    print("How many minutes would you like to add? : ");
    my $add = <STDIN>;
    chomp $add;
    return ($values + $add);   
}

sub update_exercise_replace{
    my ($values) = @_;
    print("Whats your new max? : ");
    my $new_value = <STDIN>;
    chomp $new_value;
    return $new_value;  
}

sub exercise{
    for my $i (1..10){
        print ("\n");
    }

   print ("  __________   ___  _______ .______        ______  __       _______. _______\n");
   print (" |   ____\\  \\ /  / |   ____||   _  \\      /      ||  |     /       ||   ____|\n");
   print (" |  |__   \\  V  /  |  |__   |  |_)  |    |  ,----'|  |    |   (----`|  |__   \n");
   print (" |   __|   >   <   |   __|  |      /     |  |     |  |     \\   \\    |   __|  \n");
   print (" |  |____ /  .  \\  |  |____ |  |\\  \\----.|  `----.|  | .----)   |   |  |____ \n");
   print (" |_______/__/ \\__\\ |_______|| _| `._____| \\______||__| |_______/    |_______|\n\n");


   open(FH, '<', 'exercise/exercise.txt');

    my $values = <FH>;
    close(FH);
    my $op1 = "Push ups max";
    my $op2 = "Squats max";
    my $op3 = "Cardio";
    my $op4 = "Abs";
    my $op5 = "Back";
    my @arr = split(',',$values);
    my $net = $arr[2] - $arr[1] - $arr[0];
    print (" - Push ups max: " , $arr[0],"\n");
    print (" - Squats max:  " , $arr[1],"\n");
    print (" - Cardio: ", $arr[2],"\n");
    print (" - Abs: ", $arr[3],"\n\n");
    while (1){

    print ("What would you like to add to? \n");
    my $answer = <STDIN>;
    chomp $answer;
    if ($answer eq $op1){
        $arr[0] = update_exercise_replace($arr[0]);
        last;
    }elsif ($answer eq $op2){
       $arr[1] = update_exercise_replace($arr[1]);
        last;
    }elsif ($answer eq $op3){
        $arr[2] = update_exercise_add($arr[2]);
        last;
    }elsif ($answer eq $op4){
        $arr[3] = update_exercise_add($arr[3]);
        last;
    }elsif ($answer eq $op5){
        main();
        last;
    }else{
        print "Please enter a valid option\n";
    };
    }

    my $write = ($arr[0].",".$arr[1].",".$arr[2].",".$arr[3]);
    open(FH, '>', 'exercise/exercise.txt') or die $!;
    print FH $write;
    close(FH);
    exercise()

}

1;



