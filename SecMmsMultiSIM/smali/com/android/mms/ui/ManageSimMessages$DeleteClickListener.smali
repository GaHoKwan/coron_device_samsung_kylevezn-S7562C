.class Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteClickListener"
.end annotation


# instance fields
.field private mCheckedList:[I

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;[I)V
    .locals 1
    .parameter
    .parameter "checkedList"

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    if-eqz p2, :cond_0

    .line 1136
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I

    .line 1140
    :goto_0
    return-void

    .line 1138
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I

    goto :goto_0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->mCheckedList:[I

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const v1, 0x7f0a01ed

    #calls: Lcom/android/mms/ui/ManageSimMessages;->showProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$2200(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 1145
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener$1;-><init>(Lcom/android/mms/ui/ManageSimMessages$DeleteClickListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1160
    return-void
.end method
