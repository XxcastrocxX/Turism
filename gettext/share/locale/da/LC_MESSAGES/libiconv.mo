��    -      �  =   �      �  C   �  9   %  o   _  B   �  m     ?   �  \   �  ;     P   Y  [   �       @   	  N   J  J   �  D   �  d   )  �   �  :   )	     d	     r	     {	  0   �	     �	  5   �	  	   
     
  )   "
  "   L
  1   o
  &   �
  A   �
  ;   
     F  /   V  7   �  3   �  :   �  ;   -  $   i     �     �     �     �  2   �  �    E   �  ?   .  m   n  D   �  k   !  F   �  W   �  B   ,  R   o  T   �       C     L   ^  H   �  F   �  `   ;  �   �  1   2     d     t     }  1   �     �  8   �          !  .   6  $   e  0   �  (   �  ;   �  ;         \  /   l  7   �  7   �  6     <   C  -   �  &   �  &   �     �     
  @                #                                    $         (   -             +                                    	                &      !   '   *   ,                  
                  "          %      )            --byte-subst=FORMATSTRING   substitution for unconvertible bytes
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
 Options controlling conversion problems:
 Options controlling error output:
 Options controlling the input and output format:
 Try '%s --help' for more information.
 Usage: %s [OPTION...] [-f ENCODING] [-t ENCODING] [INPUTFILE...]
 Usage: iconv [-c] [-s] [-f fromcode] [-t tocode] [file ...] Written by %s.
 cannot convert byte substitution to Unicode: %s cannot convert byte substitution to target encoding: %s cannot convert byte substitution to wide string: %s cannot convert unicode substitution to target encoding: %s cannot convert widechar substitution to target encoding: %s conversion from %s to %s unsupported conversion from %s unsupported conversion to %s unsupported or:    %s -l
 or:    iconv -l try '%s -l' to get the list of supported encodings Project-Id-Version: libiconv-1.15-pre1
Report-Msgid-Bugs-To: bug-gnu-libiconv@gnu.org
PO-Revision-Date: 2017-12-17 16:31+0100
Last-Translator: Keld Simonsen <keld@keldix.com>
Language-Team: Danish <dansk@dansk-gruppen.dk>
Language: da
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bugs: Report translation errors to the Language-Team address.
Plural-Forms:  nplurals=2; plural=(n != 1);
X-Generator: KBabel 1.11.4
   --byte-subst=FORMATSTRENG   erstatning for ikke konverterbare byte
   --help                      vis denne hjælpetekst og afslut
   --unicode-subst=FORMATSTRENG
                              erstatning af UCS-tegn som ikke kan konverteres
   --version                   udskriv versionsinformation og afslut
   --widechar-subst=FORMATSTRENG
                              erstatning for ikke konverterbare brede tegn
   -c                          smid tegn væk som ikke kan konverteres
   -f KODNING,  --from-code=KODNING
                              kodningen på inddata
   -l, --list                  list de kodninger som understøttes
   -s, --silent                undertryk fejlmeddelelser om konverteringsproblemer
   -t KODNING,  --to-code=KODNING
                              kodningen på uddata
 %s Argument %s: Et formatdirektiv med en størrelse tillades ikke her. Argument %s: Et formatdirektiv med en variabel præcision tillades ikke her. Argument %s: Et formatdirektiv med en variabel bredde tillades ikke her. Argument %s: Tegnet "%c" er ikke en gyldig konverteringsspecificering. Argument %s: Tegnet som afslutter formatdirektivet er ikke en gyldig konverteringsspecificering. Argument %s: Formatstrengen forbruger mere end ét argument: %u argument. Argument %s: Formatstrengen forbruger mere end ét argument: %u argumenter. Argument %s: Strengen stopper midt i et direktiv. %s: Ind/ud-fejl %s:%u:%u %s:%u:%u: kan ikke konvertere %s:%u:%u: ufuldstændigt tegn eller skiftesekvens (standard ind) Konverterer tekst fra én kodning til en anden kodning.
 Ind/ud-fejl Informativt uddata:
 Flag som kontrollerer konverteringsproblemer:
 Flag som kontrollerer fejludskrift:
 Flag som styrer formatet på inddata og uddata:
 Prøv '%s --help' for mere information.
 Brug: %s [FLAG...] [-f KODNING] [-t KODNING] [INPUTFIL...]
 Brug: iconv [-c] [-s] [-f fra-kode] [-t til-kode] [fil ...] Skrevet af %s.
 kan ikke konvertere byte-erstatning til UCS: %s kan ikke konvertere byte-erstatning til målkodning: %s kan ikke konvertere byte-erstatning til bred streng: %s kan ikke konvertere UCS-erstatning til målkodning: %s kan ikke konvertere bredtegns-erstatning til målkodning: %s konvertering fra %s til %s understøttes ikke konvertering fra %s understøttes ikke konvertering til %s understøttes ikke eller: %s -l
 eller: iconv -l prøv "%s -l" for at få vist listen af understøttede kodninger 