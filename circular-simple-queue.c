#include <stdio.h>
#define SIZE 7

int myArray[SIZE];
int front=-1, rear=-1, count=0;

void enqueue() {
    int item;
    printf("Sayi gir...\n");
    scanf("%d", &item);

    if(rear != SIZE -1){
        if(front==-1){
            front++;
        }
        rear++;
        myArray[rear] = item;
        printf("%d sayisi %d. indexe eklendi\n",item, rear);
    } else {
        printf("Queue dolu oldugu icin eleman eklenemedi\n");
    }
}


void dequeue() {
    if(front != -1) {
        printf("Kuyruktan %d. indexdeki %d. eleman silindi\n", front, myArray[front]);
        for(int i=0; i<SIZE-1; i++) {
            myArray[i] = myArray[i+1];
        }
        count--;
        rear --;
    } else {
        printf("Kuyrukta silinecek eleman yok\n");
    }

}

void peek() {
    printf("%d\n", myArray[rear]);
}

void cleanQueue() {
    for (int i=0; i<SIZE; i++) {
        myArray[i] = '\0';
    }
    front = -1;
    rear = -1;
    count = 0;

    printf("Kuyrukdaki tüm elemanlar silindi\n");
}

int showQueue() {
    printf("[");

    for(int i=0; i<SIZE; i++) {
        printf("%d",myArray[i]);
        if(i != SIZE-1) {
            printf(", ");
        }
    }

    printf("]\n");
}

int main() {
    int isRun = 1;

    while (isRun) {
        int selected;
        printf("1 - Enqueue\n");
        printf("2 - Dequeue\n");
        printf("3 - Peek\n");
        printf("4 - Clean Queue\n");
        printf("5 - Show Queue\n");
        printf("6 - Quit\n");
        scanf("%d",&selected);

        switch(selected) {
            case 1:
                enqueue();
                break;
            case 2:
                dequeue();
                break;
            case 3:
                peek();
                break;
            case 4:
                cleanQueue();
                break;
            case 5:
                showQueue();
                break;
            default:
                isRun = 0;
                printf("Program Sonlandirildi\n");
        }
    }
}
