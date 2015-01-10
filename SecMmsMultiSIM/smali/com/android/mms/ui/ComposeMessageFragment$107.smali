.class Lcom/android/mms/ui/ComposeMessageFragment$107;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 11708
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$107;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 11710
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 11714
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$107;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isSelectionActionMode:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 11715
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 11719
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$107;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isSelectionActionMode:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10002(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 11720
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$107;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showHideActionbar()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 11721
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 11725
    const/4 v0, 0x1

    return v0
.end method
