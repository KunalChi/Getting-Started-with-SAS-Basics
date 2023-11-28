**** SAS Base Programming for SAS®9 and SAS®9.4** Base SAS [which contains the core set of features for SAS programming] ******
Data management, business intelligence, and various types of analysis (predictive, descriptive, and prescriptive) 
are just a few of the analytical uses for SAS (Statistical Analysis Software), which the SAS Institute created in the 1970s.
The introduction of JMP (Jump) marked a significant advancement, leveraging the graphical user interface, which is 
particularly beneficial in fields like Six Sigma, quality control, and engineering. SAS's platform independence allows 
it to operate on multiple operating systems, like Linux and Windows. The software relies heavily on SAS programmers.
who manipulate SAS datasets to generate insightful data analyses. Over the years, SAS has expanded its offerings, 
encompassing solutions for data governance, data quality, big data analytics, text mining, fraud management, 
and health science. Its extensive range of solutions caters to virtually every business domain. 

**Typographical conventions** 
SAS doesn't care whether your programs are written in uppercase or lowercase, so you can write your programs 
any way you want. The statements below show the syntax, or general form, while the statements on the right 
show an example of actual statements as they might appear in a SAS program:

Basic Syntax: 
    PROC PRINT DATA = data-set-name;
        VAR variable-list;

Example:
    PROC PRINT DATA = bigcats;
        VAR Lions Tigers;

It is worth noting that the keywords PROC PRINT, DATA, and VAR remain consistent across both sides. 
Additionally, the syntax side comprises an actual data set name and variable list in place of the 
descriptive terms data-set-name and variable-list names in the example.

**Indention**
Programs are formatted in a way that makes them easy for you to read and understand.
You do not have to format your programs this way, as SAS is very flexible, but paying attention to 
some of these details will make your programs easier to read. A SAS program is a sequence of statements
executed in order. A statement gives information or instructions to SAS and must be appropriately placed 
in the program

**SAS Statements**
 As with any language, there are a few rules to follow when writing SAS programs.
The most important rule is that every SAS statement ends with a semicolon.
