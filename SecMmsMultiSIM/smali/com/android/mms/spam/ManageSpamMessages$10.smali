.class Lcom/android/mms/spam/ManageSpamMessages$10;
.super Ljava/lang/Object;
.source "ManageSpamMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/ManageSpamMessages;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$mArray:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;Ljava/util/ArrayList;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 979
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$10;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    iput-object p2, p0, Lcom/android/mms/spam/ManageSpamMessages$10;->val$mArray:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/mms/spam/ManageSpamMessages$10;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$10;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    const v1, 0x7f0a01ed

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->showProgressDialog(I)V
    invoke-static {v0, v1}, Lcom/android/mms/spam/ManageSpamMessages;->access$1400(Lcom/android/mms/spam/ManageSpamMessages;I)V

    .line 984
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/spam/ManageSpamMessages$10$1;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/ManageSpamMessages$10$1;-><init>(Lcom/android/mms/spam/ManageSpamMessages$10;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1017
    return-void
.end method
