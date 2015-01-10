.class Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->initDeleteActionAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2414
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginDeleteConversationListAnimationEnd()V
    .locals 0

    .prologue
    .line 2418
    return-void
.end method

.method public onCancelDeleteConversationListAnimationEnd()V
    .locals 0

    .prologue
    .line 2429
    return-void
.end method

.method public onEndDeleteConversationListAnimationEnd()V
    .locals 2

    .prologue
    .line 2423
    const-string v0, "Mms/ConversationList.DeleteThreadListener"

    const-string v1, "onEndDeleteConversationListAnimationEnd START deleteRun"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #calls: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V

    .line 2425
    return-void
.end method

.method public onExitDeleteConversationListAnimationEnd()V
    .locals 0

    .prologue
    .line 2435
    return-void
.end method
