.class Lcom/android/mms/spam/ManageSpamMessages$7;
.super Ljava/lang/Object;
.source "ManageSpamMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/ManageSpamMessages;->startAsyncQueryDelayed(J)V
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
    .line 597
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages$7;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages$7;->this$0:Lcom/android/mms/spam/ManageSpamMessages;

    #calls: Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V
    invoke-static {v0}, Lcom/android/mms/spam/ManageSpamMessages;->access$1000(Lcom/android/mms/spam/ManageSpamMessages;)V

    .line 601
    return-void
.end method
