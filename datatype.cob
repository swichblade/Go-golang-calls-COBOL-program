       IDENTIFICATION DIVISION.
       PROGRAM-ID. datatyp.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 ARG1 PIC X(6).
       01 ARG2 PIC X(6).
       01 Arg4 USAGE COMP-1.
       01 Arg5 USAGE COMP-2.
       01 Arg6 BINARY-SHORT SIGNED.
       PROCEDURE DIVISION USING ARG1 ARG2 Arg4 Arg5 Arg6.
       DISPLAY ARG1 " " ARG2.
       MOVE SPACES TO ARG2.
       MOVE "GO" TO ARG2
       DISPLAY Arg4.
       Display Arg5.
       Display Arg6
    
       Display "Adding 100 from Cobol"	

       add 100 to Arg4.
       add 100 to Arg5.
       subtract 100 from Arg6.

       CALL "say" USING BY reference arg1
                        BY reference arg2
       END-CALL

       EXIT PROGRAM.
