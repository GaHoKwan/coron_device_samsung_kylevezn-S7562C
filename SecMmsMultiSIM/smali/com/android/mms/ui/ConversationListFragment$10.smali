.class Lcom/android/mms/ui/ConversationListFragment$10;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$10;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryInternal(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->access$900(Lcom/android/mms/ui/ConversationListFragment;Z)V

    .line 1069
    return-void
.end method
