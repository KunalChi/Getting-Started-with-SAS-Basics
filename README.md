SAS Base Programming for SAS®9 and SAS®9.4

SAS is a statistical analysis software created by the SAS Institute in the 1970s. It offers a range of analytical uses, including data management, business intelligence, and various types of analysis such as predictive, descriptive, and prescriptive analysis. The introduction of JMP (Jump) was a significant advancement as it introduced a graphical user interface, particularly beneficial in fields like Six Sigma, quality control, and engineering. SAS can operate on multiple operating systems like Linux and Windows due to its platform independence. SAS programmers play a crucial role in manipulating SAS datasets to generate insightful data analyses. Over the years, SAS has expanded its offerings, providing solutions for data governance, data quality, big data analytics, text mining, fraud management, and health science. Its wide range of solutions serves various business domains.

Typographical conventions:
SAS doesn't differentiate between uppercase and lowercase letters in programs, allowing flexibility in writing. The syntax below represents the general form of statements, while the examples on the right demonstrate actual statements you might see in a SAS program.

Basic Syntax:
```
PROC PRINT DATA = data-set-name;
    VAR variable-list;
```


Example:
```
PROC PRINT DATA = bigcats;
    VAR Lions Tigers;
```

Note that the keywords PROC PRINT, DATA, and VAR remain consistent on both sides. The syntax side provides actual data set names and variable lists, replacing the descriptive terms like data-set-name and variable-list names used in the example.

Indentation:
SAS programs can be formatted in a way that enhances readability, although it's not mandatory. Following these formatting guidelines can make your programs easier to read. A SAS program consists of statements executed in a specific order. Each statement provides information or instructions to SAS and should be appropriately placed within the program.

SAS Statements:
Similar to any programming language, there are rules to follow when writing SAS programs. The most important rule is that every SAS statement must end with a semicolon.
