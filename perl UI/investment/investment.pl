use warnings;
use strict;


sub update_investment{
    my ($values) = @_;
    print("How much would you like to add? : ");
    my $add = <STDIN>;
    chomp $add;
    return ($values + $add);

 
    
}


sub investment{
    for my $i (1..10){
        print ("\n");
    }

    print" __  .__   __. ____    ____  _______     _______.___________..___  ___.  _______ .__   __. .___________.\n";
    print"|  | |  \\ |  | \\   \\  /   / |   ____|   /       |           ||   \\/   | |   ____||  \\ |  | |           |\n";
    print"|  | |   \\|  |  \\   \\/   /  |  |__     |   (----`---|  |----`|  \\  /  | |  |__   |   \\|  | `---|  |----`\n";
    print"|  | |  . `  |   \\      /   |   __|     \\   \\       |  |     |  |\\/|  | |   __|  |  . `  |     |  |     \n";
    print"|  | |  |\\   |    \\    /    |  |____.----)   |      |  |     |  |  |  | |  |____ |  |\\   |     |  |     \n";
    print"|__| |__| \\__|     \\__/     |_______|_______/       |__|     |__|  |__| |_______||__| \\__|     |__|     \n\n";

    open(FH, '<', 'investment/invest.txt');

    my $values = <FH>;
    close(FH);
    my $op1 = "Money Invested";
    my $op2 = "Delivery Cost";
    my $op3 = "Gross Profit";
    my $op4 = "Back";
    my @arr = split(',',$values);
    my $net = $arr[2] - $arr[1] - $arr[0];
    print (" - Money Invested: " , $arr[0],"\n");
    print (" - Delivery Cost:  " , $arr[1],"\n");
    print (" - Gross Profit: ", $arr[2],"\n");
    print (" - Net Profit: ", $net,"\n\n");
    while (1){

    print ("What would you like to add to? \n");
    my $answer = <STDIN>;
    chomp $answer;
    if ($answer eq $op1){
        $arr[0] = update_investment($arr[0]);
        last;
    }elsif ($answer eq $op2){
       $arr[1] = update_investment($arr[1]);
        last;
    }elsif ($answer eq $op3){
        $arr[2] = update_investment($arr[2]);
        last;
    }elsif ($answer eq $op4){
        main();
        last;
    }else{
        print "Please enter a valid option\n";
    };
    }

    my $write = ($arr[0].",".$arr[1].",".$arr[2]);
    open(FH, '>', 'investment/invest.txt') or die $!;
    print FH $write;
    close(FH);
    investment()

}

1;