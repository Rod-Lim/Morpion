program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
//Procédure
procedure
quit();
begin
readln();
halt;
end;
//Programme
var
  TM:array [1..3,1..3] of Char;
  Tableau:array [1..3,1..3] of integer;
  i,j,Choix,Choix2,a,l:integer;
  o1,o2,o3,o4,o5,o6,o7,o8,o9,x1,x2,x3,x4,x5,x6,x7,x8,x9:boolean;
label
  Rechoisit1;
label
  Rechoisit2;
label
  HorsNbr;
begin
//Tableau De Démo
  a:=0;
  For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
      a:=a+1;
      Tableau[i,j]:=a;
      Write(Tableau[i,j]);
      Write('|');
      end;
    Writeln;
    writeln('------');
    end;
  Readln();
//Morpion
HorsNbr:
Writeln('Joueur 1, ou voulez-vous poser votre X ?');
  Readln(Choix);
  If (0<Choix) and (10>Choix) then
  begin
  If Choix=1 then
   begin
   TM[1,1]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x1:=true;
   end;
  If Choix=2 then
   begin
   TM[1,2]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x2:=true;
   end;
  If Choix=3 then
   begin
   TM[1,3]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x3:=true;
   end;
  If Choix=4 then
   begin
   TM[2,1]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x4:=true;
   end;
  If Choix=5 then
   begin
   TM[2,2]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x5:=true;
   end;
  If Choix=6 then
   begin
   TM[2,3]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x6:=true;
   end;
  If Choix=7 then
   begin
   TM[3,1]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x7:=true;
   end;
  If Choix=8 then
   begin
   TM[3,2]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x8:=true;
   end;
  If Choix=9 then
   begin
   TM[3,3]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x9:=true;
   end;
  readln();
  end
  else
  begin
  Writeln('Un nombre entre 1 et 9 compris !');
  GoTo HorsNbr;
  end;
 For l:=1 to 4 do
 begin
 Rechoisit1:
 Writeln('Joueur 2, ou voulez-vous poser votre O ?');
  Readln(Choix2);
  If (0<Choix2) and (10>Choix2) then
  begin
  If Choix2=1 then
  If (o1=true) or (x1=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit1;
  end
  else
   begin
   TM[1,1]:=('O');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   o1:=true;
   end;
  If Choix2=2 then
  If (o2=true) or (x2=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit1;
  end
  else
   begin
   TM[1,2]:=('O');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   o2:=true;
   end;
  If Choix2=3 then
  If (o3=true) or (x3=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit1;
  end
  else
   begin
   TM[1,3]:=('O');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   o3:=true;
   end;
  If Choix2=4 then
  If (o4=true) or (x4=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit1;
  end
  else
   begin
   TM[2,1]:=('O');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   o4:=true;
   end;
  If Choix2=5 then
  If (o5=true) or (x5=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit1;
  end
  else
   begin
   TM[2,2]:=('O');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   o5:=true;
   end;
  If Choix2=6 then
  If (o6=true) or (x6=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit1;
  end
  else
   begin
   TM[2,3]:=('O');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   o6:=true;
   end;
  If Choix2=7 then
  If (o7=true) or (x7=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit1;
  end
   else
   begin
   TM[3,1]:=('O');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   o7:=true;
   end;
  If Choix2=8 then
  If (o8=true) or (x8=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit1;
  end
   else
   begin
   TM[3,2]:=('O');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   o8:=true;
   end;
  If Choix2=9 then
  If (o9=true) or (x9=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit1;
  end
  else
   begin
   TM[3,3]:=('O');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   o9:=true;
   end;
  readln();
 if (o1=true)and(o2=true) and (o3=true) or (o4=true) and (o5=true) and (o6=true) or (o7=true) and (o8=true) and (o9=true) or (o1=true) and (o4=true) and (o7=true)or(o2=true) and (o5=true) and (o8=true) or (o3=true) and (o6=true) and (o9=true) or (o1=true) and (o5=true) and (o9=true) or (o3=true) and (o5=true) and (o7=true)then
 begin
 writeln('Le Joueur 2 a gagne !!');
 quit();
 end;
 end
 else
 begin
 Writeln('Un nombre entre 1 et 9 compris !');
 GoTo Rechoisit1;
 end;
  Rechoisit2:
  Writeln('Joueur 1, ou voulez-vous poser votre X ?');
  Readln(Choix);
  If (0<Choix) and (10>Choix) then
  Begin
  If Choix=1 then
  If (o1=true) or (x1=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit2;
  end
   else
   begin
   TM[1,1]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x1:=true;
   end;
  If Choix=2 then
  If (o2=true) or (x2=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit2;
  end
   else
   begin
   TM[1,2]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x2:=true;
   end;
  If Choix=3 then
  If (o3=true) or (x3=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit2;
  end
   else
   begin
   TM[1,3]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x3:=true;
   end;
  If Choix=4 then
  If (o4=true) or (x4=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit2;
  end
  else
   begin
   TM[2,1]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x4:=true;
   end;
  If Choix=5 then
  If (o5=true) or (x5=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit2;
  end
   else
   begin
   TM[2,2]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x5:=true;
   end;
  If Choix=6 then
  If (o6=true) or (x6=true) then
  begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit2;
  end
   else
   begin
   TM[2,3]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x6:=true;
   end;
  If Choix=7 then
  If (o7=true) or (x7=true) then
 begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit2;
  end
   else
   begin
   TM[3,1]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x7:=true;
   end;
  If Choix=8 then
   If (o8=true) or (x8=true) then
   begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit2;
  end
   else
   begin
   TM[3,2]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x8:=true;
   end;
  If Choix=9 then
   If (o9=true) or (x9=true) then
   begin
   Writeln('Cette case est deja utilise !');
   Goto Rechoisit2;
  end
   else
   begin
   TM[3,3]:=('X');
   For i:=1 to 3 do
    begin
    For j:=1 to 3 do
      begin
       Write(TM[i,j]);
       Write('|');
      end;
    Writeln;
    writeln('------');
    end;
   x9:=true;
   end;
 if (x1=true)and(x2=true) and (x3=true) or (x4=true) and (x5=true) and (x6=true) or (x7=true) and (x8=true) and (x9=true) or (x1=true) and (x4=true) and (x7=true)or(x2=true) and (x5=true) and (x8=true) or (x3=true) and (x6=true) and (x9=true) or (x1=true) and (x5=true) and (x9=true) or (x3=true) and (x5=true) and (x7=true)then
 begin
 writeln('Le Joueur 1 a gagne !!');
 quit();
 end;
 end
 else
 begin
 Writeln('Un nombre entre 1 et 9 compris !');
 GoTo Rechoisit2;
 end;
 end;
 writeln('Egalite !');
end.
