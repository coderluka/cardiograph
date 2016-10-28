Program Cardiograph;
uses CRT,sysutils;

var
 x,y,i,j,k,l,m,n,p,q,a,brojac,duzina : integer;
 vreme : longint;
 unos,taster : char;
 ID : Text;
 podaci : string[30];

 {
  - Napravi datoteku da prilikom ucitavanja smrti trazi podatke preminulog i cuva u .txt
  - Play Music!
  -
 }
procedure Karton;
 begin
  Assign(ID,'karton.txt');
 end;


procedure Reset;
 begin
 clrscr;
  brojac:=0;
  x:=1;
  y:=14;
  GoToXY(x,y);
 end;

procedure ProveraUnosa;
 begin
  If KeyPressed Then
   begin
    unos:=ReadKey;
    Case ord(unos) of

        27 : begin
              Window(30,26,60,28);
              DelLine;
               a:=30;
               TextColor(LightRed);
              While duzina < 2 Do
              begin
               For l:=1 to 1 Do
                begin
                 For m:=1 to 1 Do
                  begin
                   GoToXY(a,26);

                     Write('P');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('a');
                     Delay(200);
		      a:=a+1;
                      GoToXY(a,26);
                     Write('t');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('i');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('e');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('n');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('t');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write(' ');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('d');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('i');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('s');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('c');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('o');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('n');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('e');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('c');
                     Delay(200);
                      a:=a+2;
                      GoToXY(a,26);
                     Write('t');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('e');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('d');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Write('!');
                     Delay(200);
                      a:=a+1;
                      GoToXY(a,26);
                     Writeln('...');
                     Delay(500);
                      a:=30;
                      GoToXY(28,27);
                     Writeln('Time of Death: ',DateTimeToStr(Now));
                     Window(1,1,80,25);
                     Delay(800);
                      clrscr;
                     GoToXY(30,16);
                     Window(30,16,60,36);
                     Assign(ID,'Karton.txt');
                     Rewrite(ID);
                     Writeln('Write Data:');
                     Delay(500);
                     Writeln;
                     GoToXY(1,1);
                     Write('Enter Name: ');
                     Readln(podaci);
                     Write(ID,'  ',podaci);
                     GoToXY(1,2);
                     Write('Enter Lastname: ');
                     Readln(podaci);
                     Write(ID,'         ',podaci);
                     GoToXY(1,3);
                     Write('Years lived: ');
                     Readln(podaci);
                     Write(ID,'         ',podaci);
                     GoToXY(1,4);
                     Write('Personal ID: ');
                     Readln(podaci);
                     Write(ID,'         ',podaci);
                     Close(ID);
                     Window(1,1,80,25);
                    end;                //End For PozicioniranjeXY
                  end;                  //End For PacijentIskljucen
                  duzina:=duzina+1;
                 end;                   //End While  WhereX <> 79

                 For n:=1 To 79 Do
                  begin
                   TextColor(Red);
                   GoToXY(n,8);
                   Write(' ');
                   GoToXY(n,9);
                   Write(' ');
                   GoToXY(n,10);
                   Write(' ');
                   GoToXY(n,11);
                   Write(' ');
                   GoToXY(n,12);
                   Write(' ');
                   GoToXY(n,13);
                   Write(' ');
                   GoToXY(n,14);
                   Write('_');
                   GoToXY(n,15);
                   Write(' ');
                   GoToXY(n,16);
                   Write(' ');
                   GoToXY(n,17);
                   Write(' ');
                   GoToXY(n,18);
                   Write(' ');
                   GoToXY(n,19);
                   Write(' ');
                   GoToXY(n,20);
                   Write(' ');
                   Delay(200);
                   Beep;
                   ProveraUnosa;
                  end;                  //End For Mrtav
                 TextColor(LightRed);
               end;                     //End Case Esc

          112,80 : Halt(404);           //End Case Exit
          114,82 : Reset;               //End Case Reset
          32 : begin
                repeat
                 If unos = #32 Then
                until ReadKey = #32;
               end;                     //End Case space

    Else
      TextColor(White);
      a:=30;
      GoToXY(a,5);
     Write('B');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('u');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('t');
     Delay(200);
     a:=a+1;
      GoToXY(a,5);
     Write('t');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('o');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('n');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write(' ');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('i');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('s');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write(' ');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('n');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('o');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('t');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write(' ');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('d');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('e');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('f');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('i');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('n');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('e');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('d');
     Delay(200);
	  a:=a+1;
      GoToXY(a,5);
     Write('!');
     Delay(1000);
     GoToXY(30,5);
     ClrEol;
     GoToXY(x+1,14);
     end;                               //End Case
     TextColor(LightRed);
   end;                                 //End IF
 end;                                   //End ProveraUnosa

procedure Pulsira;
 begin
  Reset;
   TextColor(LightRed);
 repeat
        p:=6;
        q:=22;
        GoToXY(x,p);
         Write('--');
        y:=14;
        GoToXY(x,y);
         Write('__');
        GoToXY(x,q);
         Write('--');
         Delay(200);
        GoToXY(x,p);
         Write('-');
        x:=x+2;
        GoToXY(x,y);
         Write('/');
        GoToXY(x,q);
         Write('--');
         Delay(200);
        GoToXY(x,p);
         Write('-');
        x:=x+1;
        GoToXY(x,y);
         Write('\');
        GoToXY(x,q);
         Write('--');
         Delay(200);
        GoToXY(x,p);
         Write('-');
        x:=x+1;
        GoToXY(x,y);
        Delay(200);
         Write('/');
        GoToXY(x,q);
         Write('--');
        GoToXY(x,p);
         Write('-');
        y:=y-1;
        x:=x+1;
        GoToXY(x,y);
         Write('/');
         Write('\');
         Delay(200);
        GoToXY(x,p);
         Write('---');
        GoToXY(x,q);
         Write('---');
        y:=y+1;
        x:=x+2;
        GoToXY(x,y);
        Delay(200);
         Write('\');
        x:=x+1;
        y:=y+1;
        p:=22;
        For j:=y to 19 Do
         begin
          GoToXY(x,y);
          Writeln('|');
          y:=y+1;
           If j = 19 Then
            begin
             GoToXY(x,y);
             Delay(100);
             Write('v');
             Beep;
            end;        //End IF 2
         end;           //End For 1
        GoToXY(x,p);
        Write('-');
        GoToXY(x,q);
         Write('---');
        x:=x+1;
        y:=14;
        GoToXY(x,y);
         Write('/');
        GoToXY(x,p);
         Write('-');
        GoToXY(x,q);
         Write('--');
        y:=y-1;
        x:=x+1;
        GoToXY(x,y);
         Write('/');
        x:=x+1;
        y:=y-1;
         For k:=12 downto 9 Do
          begin
           GoToXY(x,y);
           Write('|');
           y:=y-1;
            If k = 9 Then
             begin
              GoToXY(x,y);
              Write('A');
              Beep;
             end;       //End IF 3
          end;          //End For 2
         GoToXY(x,q);
         Write('--');
         x:=x+1;
         y:=13;
         GoToXY(x,y);
          Write('\');
         x:=x+1;
         y:=y+1;
         GoToXY(x,y);
          Write('\');
         x:=x+1;
         GoToXY(x,y);
          Write('/');
         x:=x+1;
         GoToXY(x,y);
          Write('\');
         x:=x+1;
         GoToXY(x,y);

         brojac:=brojac+1;
         ProveraUnosa;

   until brojac = 5;
 end;

Begin
  clrscr;
  cursoroff;
  brojac:=0;
  duzina:=1;

  Window(30,12,68,30);
  TextBackground(Cyan);
  Write('              CARDIOGRAPH              ');
  Write('    r   -  reset                       ');
  Write('    p   -  exit                        ');
  Write('   Esc  -  discontinue Patient support ');
  Write('  Space -  pause                       ');
  Write('                                       ');
  Write('  Machine starts on ENTER.             ');
  Readln;
   Window(1,1,80,30);

 repeat
  Pulsira;
  ProveraUnosa;
  Reset;
 until unos = #112;
End.
