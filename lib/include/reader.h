

typedef struct{
	char **array;
	unsigned int len;
}stringList;


stringList *read_from_file(char *path);

void freeStringList(stringList* sl);
