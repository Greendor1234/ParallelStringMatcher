#include "../include/reader.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

void freeStringList(stringList* sl){
	for (int i = 0; i < sl->len; i++)
		free(sl->array[i]);
	free(sl->array);
	free(sl);
}

stringList* read_from_file(char *path){
	FILE *fk = NULL;
    char   *line = NULL;
    size_t  len  = 0;
    ssize_t read;

	fk = fopen(path, "r");
	if (fk == NULL){
		perror("ERROR: Opening file\n");
		return NULL;
	}
	stringList* strings = malloc(sizeof(stringList));
	if (strings == NULL){
		perror("ERROR: Allocating datastructure stringList\n");
		return NULL;
	}
	unsigned int num_strings = 0;
    while ((read = getline(&line, &len, fk)) != -1)
        num_strings++;
    if ( fclose(fk) ){
    	perror("ERROR: Closing file pointer\n");
    	return NULL;
    }

    strings->array = malloc(num_strings * sizeof(char*));
    if (strings->array == NULL){
    	perror("ERROR: Allocating char** strings->array\n");
    	return NULL;
    }
    strings->len = num_strings;
	fk = fopen(path, "r");
	if (fk == NULL){
		perror("ERROR: Opening file\n");
		return NULL;
	}
	unsigned int i = 0;
    while ((read = getline(&line, &len, fk)) != -1){
    	strings->array[i] = malloc( (read + 1) * sizeof(char));
    	if (strings->array[i] == NULL){
    		perror("ERROR: Allocating string space strings->array[i]\n");
    		return NULL;
    	}
    	strncpy(strings->array[i], line, read - 1);
    	strings->array[i][read] = '\0';
    	i++;
    }

    if ( fclose(fk) ){
    	perror("ERROR: Closing file pointer\n");
    	return NULL;
    }
    return strings;

}
