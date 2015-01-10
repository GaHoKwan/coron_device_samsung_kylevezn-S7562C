.class Lcom/android/mms/spam/ManageSpamMessages$9;
.super Ljava/lang/Object;
.source "ManageSpamMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/ManageSpamMessages;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;

.field final synthetic val$id:J

.field final synthetic val$typeStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$9;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    iput-object p2, p0, Lcom/android/mms/spam/ManageSpamMessages$9;->val$typeStr:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/mms/spam/ManageSpamMessages$9;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$9;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    const/4 v1, 0x2

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/mms/spam/ManageSpamMessages;->access$400(Lcom/android/mms/spam/ManageSpamMessages;I)V

    .line 729
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$9;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages$9;->val$typeStr:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/mms/spam/ManageSpamMessages$9;->val$id:J

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->deleteFromSpam(Ljava/lang/String;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/spam/ManageSpamMessages;->access$1300(Lcom/android/mms/spam/ManageSpamMessages;Ljava/lang/String;J)V

    .line 730
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$9;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$1000(Lcom/android/mms/spam/ManageSpamMessages;)V

    .line 731
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 732
    return-void
.end method
