%{
    Student name: Rishi Bhatnagar
    Student CCID: rbhatna1
    Own contribution (%) 100
    Other contribution (%) 0
	
    Copyright (c) 2020, Dileepan Joseph
    All rights reserved.
	
	To avoid plagiarism, list the names of persons, whose code, ideas, 
    images, or data are used in any derivative work. To avoid cheating, 
    list the names of persons, other than your course or lab instructor 
    who provided compositional assistance.  

    After each name, including the student's, enter in parentheses an 
    estimate of the person's contributions in percent. Without these 
    numbers, which add to 100%, follow-up questions will be asked.
 
    For an unknown person, e.g., an anonymous online source that should 
    be avoided, enter a code name in uppercase, e.g., SAURON, and 
    email the lab instructor prior to submission with 
    the corresponding URL.

%}

clear; %deletes all the saved variables
clc; %clears the Command Window

disp('Version 2')
%------------------Do Not Edit--------------------------------------------%
%The user will only enter in numbers to this program. The first number entered is 1-9.
code_str = input('Please enter a code to break: ','s'); %get input code from user and save it as a string
digits = code_str - '0';%convert string to an array
%students, please ensure you understand what these two lines do :-)  Edward Tiong
%------------------Do Not Edit--------------------------------------------%

%------------Students write their code here-------------------------------------%

%To create an empty variable of the error message which would be displayed 
% in case of error. Setting it as empty as no error intially.

Decoy_Message=''; 


% Pseudo code for Part 1 as below

% If it is not a 9 digit number
%   Save an error message in the variable and display on command window
% Else
%   Nothing happens and code proceeds

% Pseudo code for Part 2 

%Calculating the sum of digits
%Finding it's remainder when divided by 2
%If remainder is not 0 
%   Save an error message the variable and displays on the command window
%Else 
%     The code continues

%Pseudo code for Part 3

% Find rescue number
% Using switch evaluate the day
%   If day found( rescue number in range)
%      Store the corresponding rescue day to variable
%   If no day being found( rescue number not in range)
%      Assign an error and display on command window
  
%Pseudo code for Part 4

%Finding 1st rescue number
%Calculating its remainder
%  If rem==0
%     Finding final rescue number
%  Else
%     Finding final rescue number
%Using switch for rescue number
%   If it falls in range
%      Assigning value to location
%   Out of range
%      Assign error and display on command window.


if numel(digits)~=9 %numel calculates the number of the digits in the array entered

    Decoy_Message='Decoy Message: Not a nine-digit number.';
    % Saves the error message in the variable in case there are not 9 digits
    disp(Decoy_Message) %Displays text on the command window

else
    %This is for Part 2 to check whether the sum is even. If the sum is even, 
    %then upon dividing it by 2, it would give remainder as 0. Psuedo code
    %above
    
    Total_digits=sum(digits); % Calulating the sum of the digits entered
    Final_rem=mod(Total_digits,2); % Calculating the remainder when sum divided by 2 
    
    
    if Final_rem~=0
        %Proceeding if remainder is not 0 
    
        Decoy_Message='Decoy Message: Sum is odd';
        % Saves an error message in variable
        disp(Decoy_Message) 
        %Displays the text on command window 

    else
        %This is for Part 3 to find the rescue day using switch statement. Psuedo
        %code above

        Rescue_number= digits(1)*digits(3)-digits(5); %Saving the rescue number in variable

        switch Rescue_number %Switch keyword to introduce a switch
            case 1                   %Executes this is rescue number is 1
                Rescue_day='Monday'; % Assigns value to a variable
        
            case 2                   %Executes this is rescue number is 2
                Rescue_day='Tuesday'; % Assigns value to a variable
        
            case 3                   %Executes this is rescue number is 3
                Rescue_day='Wednesday'; % Assigns value to a variable
        
            case 4                   %Executes this is rescue number is 4
                Rescue_day='Thrusday'; % Assigns value to a variable
        
            case 5                   %Executes this is rescue number is 5
                Rescue_day='Friday'; % Assigns value to a variable
        
            case 6                   %Executes this is rescue number is 6
                Rescue_day='Saturday'; % Assigns value to a variable
        
            case 7                   %Executes this is rescue number is 7
                Rescue_day='Sunday'; % Assigns value to a variable
        
            otherwise                %Executes this is rescue number is anything else
             
                Decoy_Message='Decoy Message: Invalid rescue day'; 
                %Assigning the value to a variable
                disp(Decoy_Message)
                %Display the decoy message on the command window
         return 
         end %termintes switch statement
        
       %This is for point 4 to find the rendevous point. Psuedo code above
       
       if isempty(Decoy_Message)==1 %Continues if no error assigned earlier

            ren_point1=digits(2)*digits(4)-digits(6); %Store value in variable

            rem1=mod(ren_point1,3); % Storing remainder when numeric value is divided by 3
            
            if rem1==0 %Evaluates condition if the remainder is 0
                ren_point2=digits(7)-digits(9); %Calculates the final numeric value of rendevous point
            
            else %Evaluates condition when remainder is not 0
                ren_point2=digits(8)-digits(9); %Calculates the final numeric value of rendevous point
            
            end %Terminates if statement
            
            switch ren_point2 %Switch keyword to introduce a switch
            
                case 1       %Executes this is rescue point's numeric equivalent is 1
                   ren_loc='bridge'; % Assigns value to a variable
            
                case 2       %Executes this is rescue point's numeric equivalent is 2
                   ren_loc='library'; % Assigns value to a variable
            
                case 3       %Executes this is rescue point's numeric equivalent is 3
                   ren_loc='river crossing'; % Assigns value to a variable
            
                case 4       %Executes this is rescue point's numeric equivalent is 4
                   ren_loc='airport'; % Assigns value to a variable
            
                case 5       %Executes this is rescue point's numeric equivalent is 5
                   ren_loc='bus terminal'; % Assigns value to a variable
            
                case 6       %Executes this is rescue point's numeric equivalent is 6
                   ren_loc='hospital'; % Assigns value to a variable
            
                case 7       %Executes this is rescue point's numeric equivalent is 7
                   ren_loc='St. Petes Church'; % Assigns value to a variable
            
                otherwise %Executes this is rescue point's numeric equivalent is anything else
                    
                    Decoy_Message='Decoy Message: Invalid rendevous point';
                    %Assigning the value to a variable
                    disp(Decoy_Message)
                    %Displaying text on the command window
            return
            end %terminates switch statement

            if isempty(Decoy_Message)==1
                %isempty checks, if the decoy message variable is empty.
            
                fprintf('Rescue on %s at the %s\n',Rescue_day,ren_loc)
                %Displaying location and day on the command window
            
            end %terminates the if statement
        end %terminates the if statement
    end % Terminates the if statement
end % Terminates the if statement


%----------------------------Program Ends---------------------------------%
