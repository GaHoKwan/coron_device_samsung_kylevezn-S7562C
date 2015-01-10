.class Lcom/android/mms/ui/ComposeMessageFragment$115;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->resizeImage(Lcom/google/android/mms/pdu/PduPart;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$bsendMultiple:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12688
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$115;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$115;->val$bsendMultiple:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 12690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$115;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$115;->val$bsendMultiple:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    .line 12691
    return-void
.end method
