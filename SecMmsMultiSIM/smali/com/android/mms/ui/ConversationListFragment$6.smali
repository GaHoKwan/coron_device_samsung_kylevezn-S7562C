.class Lcom/android/mms/ui/ConversationListFragment$6;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
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
    .line 627
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$6;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 629
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$6;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v1, 0xc8

    #calls: Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$400(Lcom/android/mms/ui/ConversationListFragment;J)V

    .line 632
    return-void
.end method
