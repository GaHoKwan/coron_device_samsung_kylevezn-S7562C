.class Lcom/android/mms/ui/ComposeMessageFragment$106;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 10488
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 10490
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$106;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/mms/ui/ComposeMessageFragment;->m_lOldShowDialogTime:J

    .line 10491
    return-void
.end method
