.class Lcom/android/mms/ui/ComposeMessageFragment$9;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$sendSimSlot:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->val$sendSimSlot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1689
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 1690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$9;->val$sendSimSlot:I

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->sendMessage(ZI)V
    invoke-static {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2300(Lcom/android/mms/ui/ComposeMessageFragment;ZI)V

    .line 1691
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1692
    return-void
.end method
