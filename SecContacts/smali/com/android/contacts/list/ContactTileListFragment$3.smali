.class Lcom/android/contacts/list/ContactTileListFragment$3;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$700(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$700(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 603
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #setter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->access$602(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 608
    :cond_0
    return-void
.end method

.method public onContextContactSelected(Lcom/android/contacts/list/ContactTileView;)V
    .locals 1
    .parameter "contactTileView"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #setter for: Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->access$902(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;

    .line 621
    return-void
.end method

.method public onKeyContactSelected(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$700(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    const-string v0, "kitty"

    const-string v1, " cotacttilfagment onKeyContactSelected  "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #setter for: Lcom/android/contacts/list/ContactTileListFragment;->mSendKeySelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/android/contacts/list/ContactTileListFragment;->access$802(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 614
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$3;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    #getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSendKeySelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->callSelection(Landroid/net/Uri;)V

    .line 616
    :cond_0
    return-void
.end method
