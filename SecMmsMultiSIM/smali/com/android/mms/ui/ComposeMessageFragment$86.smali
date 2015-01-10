.class Lcom/android/mms/ui/ComposeMessageFragment$86;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onClick(Landroid/view/View;)V
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
    .line 9185
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$86;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 9187
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$86;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 9188
    .local v2, location:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$86;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$86;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    .line 9189
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$86;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v1, 0xd

    invoke-virtual {v0, v3, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    .line 9190
    return-void
.end method
