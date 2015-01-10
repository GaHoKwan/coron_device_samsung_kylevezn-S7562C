.class Lcom/android/mms/data/Conversation$1;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Conversation;

.field final synthetic val$exit:Ljava/lang/Runnable;

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/mms/data/Conversation$1;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$1;->val$threadUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/data/Conversation$1;->val$exit:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 469
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$1$1;-><init>(Lcom/android/mms/data/Conversation$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 487
    iget-object v0, p0, Lcom/android/mms/data/Conversation$1;->val$exit:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 488
    return-void
.end method
