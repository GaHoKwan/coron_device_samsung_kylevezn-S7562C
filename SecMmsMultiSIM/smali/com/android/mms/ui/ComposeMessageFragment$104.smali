.class Lcom/android/mms/ui/ComposeMessageFragment$104;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->setAttachmentList(Lcom/android/mms/model/SlideshowModel;Z)V
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
    .line 10166
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$104;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10169
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$104;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$104;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10170
    return-void
.end method
