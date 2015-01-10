.class Lcom/android/mms/ui/ComposeMessageFragment$149;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showPriorityLevel()V
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
    .line 17569
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 17571
    if-nez p2, :cond_0

    .line 17572
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPriorityLevel:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15002(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    .line 17577
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPriorityLevel:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15000(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setPriority(I)V

    .line 17578
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setPriorityIcon()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 17579
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 17580
    return-void

    .line 17574
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$149;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x2

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mPriorityLevel:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15002(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    goto :goto_0
.end method
