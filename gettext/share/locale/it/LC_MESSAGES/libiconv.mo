��    /      �  C           C     9   ]  o   �  B     m   J  ?   �  \   �  ;   U  P   �  [   �     >  @   A  N   �  J   �  D     d   a  �   �  :   a	     �	     �	     �	  0   �	     �	  5   
  	   ;
     E
  �   Z
  )     "   .  1   Q  <   �  &   �  A   �  ;   )     e  /   u  7   �  3   �  :     ;   L  $   �     �     �     �     �  2     �  :  f   �  >   U  v   �  9     t   E  B   �  Y   �  =   W  Y   �  X   �     H  L   K  V   �  U   �  O   E  p   �  �     :   �     �     �      �  2        R  .   Z     �     �  �   �  6   j  1   �  ;   �  �     .   �  ;   �  9         :  :   J  D   �  D   �  H     Q   X  %   �      �     �            6   +           -                	   .          '                  
   !   ,                       )          &               #                         "           /                            %          (                $      *   +                --byte-subst=FORMATSTRING   substitution for unconvertible bytes
   --help                      display this help and exit
   --unicode-subst=FORMATSTRING
                              substitution for unconvertible Unicode characters
   --version                   output version information and exit
   --widechar-subst=FORMATSTRING
                              substitution for unconvertible wide characters
   -c                          discard unconvertible characters
   -f ENCODING, --from-code=ENCODING
                              the encoding of the input
   -l, --list                  list the supported encodings
   -s, --silent                suppress error messages about conversion problems
   -t ENCODING, --to-code=ENCODING
                              the encoding of the output
 %s %s argument: A format directive with a size is not allowed here. %s argument: A format directive with a variable precision is not allowed here. %s argument: A format directive with a variable width is not allowed here. %s argument: The character '%c' is not a valid conversion specifier. %s argument: The character that terminates the format directive is not a valid conversion specifier. %s argument: The format string consumes more than one argument: %u argument. %s argument: The format string consumes more than one argument: %u arguments. %s argument: The string ends in the middle of a directive. %s: I/O error %s:%u:%u %s:%u:%u: cannot convert %s:%u:%u: incomplete character or shift sequence (stdin) Converts text from one encoding to another encoding.
 I/O error Informative output:
 License GPLv3+: GNU GPL version 3 or later <%s>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
 Options controlling conversion problems:
 Options controlling error output:
 Options controlling the input and output format:
 Report bugs in the bug tracker at <%s>
or by email to <%s>.
 Try '%s --help' for more information.
 Usage: %s [OPTION...] [-f ENCODING] [-t ENCODING] [INPUTFILE...]
 Usage: iconv [-c] [-s] [-f fromcode] [-t tocode] [file ...] Written by %s.
 cannot convert byte substitution to Unicode: %s cannot convert byte substitution to target encoding: %s cannot convert byte substitution to wide string: %s cannot convert unicode substitution to target encoding: %s cannot convert widechar substitution to target encoding: %s conversion from %s to %s unsupported conversion from %s unsupported conversion to %s unsupported or:    %s -l
 or:    iconv -l try '%s -l' to get the list of supported encodings Project-Id-Version: GNU libiconv 1.17-pre1
Report-Msgid-Bugs-To: bug-gnu-libiconv@gnu.org
PO-Revision-Date: 2024-10-08 12:18+0200
Last-Translator: Michele Locati <michele@locati.it>
Language-Team: Italian <tp@lists.linux.it>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Bugs: Report translation errors to the Language-Team address.
   --byte-subst=STRINGA_FORMATO
                              sostituzione per i byte non convertibili
   --help                      visualizza questo aiuto ed esce
   --unicode-subst=STRINGA_FORMATO
                              sostituzione per i caratteri Unicode non convertibili
   --version                   stampa la versione ed esce
   --widechar-subst=STRINGA_FORMATO
                              sostituzione per i caratteri wide non convertibili
   -c                          scarta i caratteri non convertibili
   -f CODIFICA, --from-code=CODIFICA
                              la codifica dell'input
   -l, --list                  elenca le codifiche supportate
   -s, --silent                tralascia i messaggi di errore dei problemi di conversione
   -t CODIFICA, --to-code=CODIFICA
                              la codifica dell'output
 %s argomento %s: una direttiva di formato con una dimensione non è consentita. argomento %s: una direttiva di formato con una precisione variabile non è consentita. argomento %s: una direttiva di formato con una larghezza variabile non è consentita. argomento %s: il carattere "%c" non è uno specificatore di conversione valido. argomento %s: il carattere terminante della direttiva di formato non è uno specificatore di conversione valido. argomento %s: la stringa di formato utilizza più di un argomento: %u argomento. argomento %s: la stringa di formato utilizza più di un argomento: %u argomenti. argomento %s: la stringa termina a metà di una direttiva. %s: errore di I/O %s:%u:%u %s:%u:%u: impossibile convertire %s:%u:%u: carattere o sequenza di shift incompleto (stdin) Converte il testo da una codifica a un'altra.
 Errore di I/O Output informativo:
 Licenza GPLv3+: GNU GPL versione 3 o successiva <%s>
Questo è software libero: siete liberi di modificarlo e ridistribuirlo.
Non c'è ALCUNA GARANZIA, nella misura consentita dalla legge.
 Opzioni per il controllo dei problemi di conversione:
 Opzioni per il controllo degli errori di output:
 Opzioni per il controllo del formato di input e di output:
 Segnalare i bug nel bug tracker all'indirizzo <%s>
o tramite email a <%s>.
Segnalare gli errori di traduzione a <tp@lists.linux.it>.
 Usare "%s --help" per ulteriori informazioni.
 Uso: %s [OPZIONI...] [-f CODIFICA] [-t CODIFICA] [FILE...]
 Uso: iconv [-c] [-s] [-f dacodice] [-t acodice] [FILE...] Scritto da %s.
 impossibile convertire la sostituzione byte in Unicode: %s impossibile convertire la sostituzione byte alla codifica finale: %s impossibile convertire la sostituzione byte con una stringa wide: %s impossibile convertire la sostituzione Unicode nella codifica finale: %s impossibile convertire il carattere wide di sostituzione alla codifica finale: %s conversione da %s a %s non supportata conversione da %s non supportata conversione a %s non supportata o:   %s -l
 o:   iconv -l usare "%s -l" per un elenco delle codifiche supportate 