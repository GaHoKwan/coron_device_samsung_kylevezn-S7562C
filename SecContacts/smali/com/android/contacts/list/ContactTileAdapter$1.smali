.class Lcom/android/contacts/list/ContactTileAdapter$1;
.super Ljava/lang/Object;
.source "ContactTileAdapter.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/android/contacts/list/ContactTileView;)V
    .locals 3
    .parameter "contactTileView"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 749
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$100(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$202(Lcom/android/contacts/list/ContactTileAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    .line 751
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #setter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->access$302(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;

    .line 753
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$400(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setActivatedState(Lcom/android/contacts/list/ContactTileView;Z)V

    .line 754
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setActivatedState(Lcom/android/contacts/list/ContactTileView;Z)V

    .line 756
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$300(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileView;

    move-result-object v1

    #setter for: Lcom/android/contacts/list/ContactTileAdapter;->mLastSelectedView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->access$402(Lcom/android/contacts/list/ContactTileAdapter;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;

    .line 759
    :cond_0
    return-void
.end method

.method public onContextContactSelected(Lcom/android/contacts/list/ContactTileView;)V
    .locals 1
    .parameter "contactTileView"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter$Listener;->onContextContactSelected(Lcom/android/contacts/list/ContactTileView;)V

    .line 778
    :cond_0
    return-void
.end method

.method public onkey(Lcom/android/contacts/list/ContactTileView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "contactTileView"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 764
    const-string v0, "kitty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cotacttileadapter onkey mSelectVis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mSelectionVisible:Z
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileAdapter;->access$100(Lcom/android/contacts/list/ContactTileAdapter;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileAdapter$1;->this$0:Lcom/android/contacts/list/ContactTileAdapter;

    #getter for: Lcom/android/contacts/list/ContactTileAdapter;->mListener:Lcom/android/contacts/list/ContactTileAdapter$Listener;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileAdapter;->access$000(Lcom/android/contacts/list/ContactTileAdapter;)Lcom/android/contacts/list/ContactTileAdapter$Listener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter$Listener;->onKeyContactSelected(Landroid/net/Uri;)V

    .line 767
    const/4 v0, 0x1

    .line 770
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
