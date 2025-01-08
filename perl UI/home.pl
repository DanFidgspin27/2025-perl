use strict;         
use warnings;



    
sub main{

    print("__    __    ______   .___  ___.  _______ \n");
    print("|  |  |  |  /  __  \\  |   \\/   | |   ____| \n");
    print("|  |__|  | |  |  |  | |  \\  /  | |  |__    \n");
    print("|   __   | |  |  |  | |  |\\/|  | |   __|   \n");
    print("|  |  |  | |  `--'  | |  |  |  | |  |____  \n");
    print("|__|  |__|  \\______/  |__|  |__| |_______| \n\n");

    my $run = 1;                        

while ($run){
    my $op1 = "Investment";
    my $op2 = "Exercise";
    my $op3 = "Savings";
    print "\nWhich report would you like to read/update:\n";
    print " - Investment\n";
    print " - Exercise\n";
    print " - Savings\n";
    my $answer = <STDIN>;
    chomp $answer;
    if ($answer eq $op1){
        investment();
        last;
    }elsif ($answer eq $op2){
        exercise();
        last;
    }elsif ($answer eq $op3){
        investment();
        last;
    }else{
        print "Please enter a valid option\n";
    };
}

}

1;
