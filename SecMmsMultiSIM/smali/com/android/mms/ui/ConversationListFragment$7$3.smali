.class Lcom/android/mms/ui/ConversationListFragment$7$3;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationListFragment$7;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$7$3;->this$1:Lcom/android/mms/ui/ConversationListFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$7$3;->this$1:Lcom/android/mms/ui/ConversationListFragment$7;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListFragment$7;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->markCheckedMessageLimit()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$600(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 691
    return-void
.end method
