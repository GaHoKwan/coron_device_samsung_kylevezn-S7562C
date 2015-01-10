.class Lcom/android/mms/spam/ManageSpamMessages$6;
.super Ljava/lang/Object;
.source "ManageSpamMessages.java"

# interfaces
.implements Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/ManageSpamMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/ManageSpamMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/ManageSpamMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$6;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/spam/SpamMessageListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 590
    const-string v0, "Mms/ManageSpamMessages"

    const-string v1, "onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$6;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    const-wide/16 v1, 0xc8

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->startAsyncQueryDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/spam/ManageSpamMessages;->access$900(Lcom/android/mms/spam/ManageSpamMessages;J)V

    .line 593
    return-void
.end method
