#include <stdio.h>
#define MAXLINE 1000

/* Properties
 _________________________________________________________ */

int getline(char line[], int max);
int strindex(char source[], char searchfor[]);

char pattern[] = "ould";

/* Main
 _________________________________________________________ */

int main () 
{
    char line[MAXLINE];
	int found = 0;
	
	while (getline(line, MAXLINE) > 0) 
	{
		if (strindex(line, pattern) >= 0) 
		{
			printf("Found oud in: %s", line);
			found++;
		}
		else {
			printf("Couldn't find it\n");
		}

	}
	
	return found;
}

/* Get line
 _________________________________________________________ */

int getline(char s[], int lim)
{
	int c;
	int i = 0;
	
	while (--lim > 0 && (c = getchar()) != EOF && c != '\n') 
	{
		s[i++] = c;
	}
	
	if(c == '\n')
		s[i++] = c;
	
	s[i] = '\0';
	
	return i;
}

/* strindex, returns index of t in s, -1 if none
 _________________________________________________________ */

int strindex(char s[], char t[])
{
	int i;
	int j;
	int k;
	
	for (i = 0; s[i] != '\0'; i++) 
	{
		for (j=i, k=0; t[k] != '\0' && s[j] == t[k]; j++, k++);
		
		if (k > 0 && t[k] == '\0') 
		{
			return i;
		}
	}
	
	return -1;
}
