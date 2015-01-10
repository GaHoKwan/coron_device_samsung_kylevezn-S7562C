.class Lcom/android/mms/ui/ComposeMessageFragment$15;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showInternationalSmsRoamGuardDialog(I)V
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
    .line 1896
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->val$sendSimSlot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$15;->val$sendSimSlot:I

    invoke-virtual {v0, p2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->sendSmsInInternationalRoaming(II)V

    .line 1899
    return-void
.end method
