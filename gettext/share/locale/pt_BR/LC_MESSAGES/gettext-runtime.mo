��    &      L  5   |      P  8   Q  B   �  A   �  6     H   F  I   �  F   �  9      7   Z  6   �  M   �  L     O   d  H   �  {   �     y  �   �  e   `  :   �    	  �  
  �  �     �     �  <   �  1   �  &   "     I  "   X  9   {  I   �  �   �     �     �     �     �     �  �  �  G   �  D   ;  B   �  ;   �  H   �  J   H  P   �  5   �  3     8   N  M   �  P   �  M   &  H   t  {   �     9  �   F  g   ;  ;   �  6  �  �    �       �     �  �     1   �  +   �     �  "   �  =     J   ]  �   �     H     Y     j     ~     �              !          #                                                      %                                        
                  $      	   &                 "                  -E                        (ignored for compatibility)
   -V, --version               output version information and exit
   -V, --version             display version information and exit
   -c, --context=CONTEXT     specify context for MSGID
   -d, --domain=TEXTDOMAIN   retrieve translated message from TEXTDOMAIN
   -d, --domain=TEXTDOMAIN   retrieve translated messages from TEXTDOMAIN
   -e                        enable expansion of some escape sequences
   -h, --help                  display this help and exit
   -h, --help                display this help and exit
   -n                        suppress trailing newline
   -v, --variables             output the variables occurring in SHELL-FORMAT
   COUNT                     choose singular/plural form based on this value
   MSGID MSGID-PLURAL        translate MSGID (singular) / MSGID-PLURAL (plural)
   [TEXTDOMAIN]              retrieve translated message from TEXTDOMAIN
   [TEXTDOMAIN] MSGID        retrieve translated message corresponding
                            to MSGID from TEXTDOMAIN
 Bruno Haible Copyright (C) %s Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <%s>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
 Display native language translation of a textual message whose grammatical
form depends on a number.
 Display native language translation of a textual message.
 If the TEXTDOMAIN parameter is not given, the domain is determined from the
environment variable TEXTDOMAIN.  If the message catalog is not found in the
regular directory, another location can be specified with the environment
variable TEXTDOMAINDIR.
Standard search directory: %s
 If the TEXTDOMAIN parameter is not given, the domain is determined from the
environment variable TEXTDOMAIN.  If the message catalog is not found in the
regular directory, another location can be specified with the environment
variable TEXTDOMAINDIR.
When used with the -s option the program behaves like the 'echo' command.
But it does not simply copy its arguments to stdout.  Instead those messages
found in the selected catalog are translated.
Standard search directory: %s
 In normal operation mode, standard input is copied to standard output,
with references to environment variables of the form $VARIABLE or ${VARIABLE}
being replaced with the corresponding values.  If a SHELL-FORMAT is given,
only those environment variables that are referenced in SHELL-FORMAT are
substituted; otherwise all environment variables references occurring in
standard input are substituted.
 Informative output:
 Operation mode:
 Report bugs in the bug tracker at <%s>
or by email to <%s>.
 Substitutes the values of environment variables.
 Try '%s --help' for more information.
 Ulrich Drepper Usage: %s [OPTION] [SHELL-FORMAT]
 Usage: %s [OPTION] [TEXTDOMAIN] MSGID MSGID-PLURAL COUNT
 Usage: %s [OPTION] [[TEXTDOMAIN] MSGID]
or:    %s [OPTION] -s [MSGID]...
 When --variables is used, standard input is ignored, and the output consists
of the environment variables that are referenced in SHELL-FORMAT, one per line.
 Written by %s.
 error while reading "%s" missing arguments standard input too many arguments Project-Id-Version: gettext-runtime 0.20.2
Report-Msgid-Bugs-To: bug-gettext@gnu.org
PO-Revision-Date: 2020-04-16 08:40-0300
Last-Translator: Rafael Fontenelle <rafaelff@gnome.org>
Language-Team: Brazilian Portuguese <ldpbr-translation@lists.sourceforge.net>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Virtaal 1.0.0-beta1
X-Bugs: Report translation errors to the Language-Team address.
   -E                        (ignorado por questão de compatibilidade)
   -V, --version               exibe a informação da versão e sai
   -V, --version             exibe a informação da versão e sai
   -c, --context=CONTEXTO    especifica contexto para MSGID
   -d, --domain=DOMÍNIOTEXTO obtém mensagem traduzida de DOMÍNIOTEXTO
   -d, --domain=DOMÍNIOTEXTO obtém mensagens traduzidas de DOMÍNIOTEXTO
   -e                        habilita expansão de algumas sequências de escape
   -h, --help                  exibe essa ajuda e sai
   -h, --help                exibe essa ajuda e sai
   -n                        suprime nova linha ao final
   -v, --variables             exibe as variáveis ocorrentes em SHELL-FORMAT
   NÚMERO                    escolhe forma singular/plural com base nesse valor
   MSGID MSGID-PLURAL        traduzi MSGID (singular) / MSGID-PLURAL (plural)
   [DOMÍNIOTEXTO]            obtém mensagem traduzida de DOMÍNIOTEXTO
   [DOMÍNIOTEXTO] MSGID      obtém mensagem traduzida correspondendo a
                            MSGID de DOMÍNIOTEXTO
 Bruno Haible Copyright (C) %s Free Software Foundation, Inc.
Licença GPLv3+: GNU GPL versão 3 ou posterior <%s>
Este é um software livre: você é livre para alterá-lo e redistribui-lo.
NÃO HÁ QUALQUER GARANTIA, na máxima extensão permitida em lei.
 Exibe tradução de idioma nativo de uma mensagem textual cuja forma
gramatical depende de um número.
 Exibe tradução do idioma nativo de uma mensagem textual.
 Se o parâmetro DOMÍNIOTEXTO não for informado, o domínio é determinado por
meio da variável de ambiente TEXTDOMAIN. Se o catálogo de mensagens não
for encontrado no diretório padrão, outra localização pode ser especificada
na variável de ambiente TEXTDOMAINDIR.
Diretório de pesquisa padrão: %s
 Se o parâmetro DOMÍNIOTEXTO não for informado, o domínio é determinado por
meio da variável de ambiente TEXTDOMAIN. Se o catálogo de mensagens não
for encontrado no diretório padrão, outra localização pode ser especificada
na variável de ambiente TEXTDOMAINDIR.
Quando USADO com a opção -s o programa comporta-se como o comando "echo".
Mas não somente copiando seus parâmetros para stdout, e sim traduzindo as
mensagens encontradas no catálogo selecionado
Diretório de pesquisa padrão: %s
 Em modo de operação normal, a entrada padrão é copiada para a saída padrão,
com referências a variáveis de ambiente da forma de $VARIABLE ou ${VARIABLE}
sendo substituída com os valores correspondentes. Se um FORMATO-SHELL é dado,
apenas aquelas variáveis de ambiente que forem referenciadas no FORMATO-SHELL
são substituídas. Do contrário, todas as referências variáveis de ambiente
ocorrentes na entrada padrão são substituídas.
 Saída informativa:
 Modo de operação:
 Relate erros no rastreador em <%s>
ou por e-mail para <%s>.
Relate erros de tradução para <https://translationproject.org/team/pt_BR.html>
 Substitui os valores das variáveis de ambiente.
 Tente "%s --help" para mais informações.
 Ulrich Drepper Uso: %s [OPÇÃO] [FORMATO SHELL]
 Uso: %s [OPÇÃO] [DOMÍNIOTEXTO] MSGID MSGID-PLURAL NÚMERO
 Uso: %s [OPÇÃO] [[DOMÍNIOTEXTO] MSGID]
ou:  %s [OPÇÃO] -s [MSGID]...
 Quando --variables é usado, a entrada padrão é ignorada e a saída conste nas
variáveis de ambiente que são referenciadas em FORMATO-SHELL, um por linha.
 Escrito por %s.
 erro ao ler "%s" faltando argumentos entrada padrão número excessivo de argumentos 