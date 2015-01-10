.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showSpeedDialDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field final synthetic val$mIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8000
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->val$mIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "mButton"

    .prologue
    const/4 v3, 0x1

    .line 8002
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8003
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8004
    const-string v1, "from_speed_dial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8005
    const-string v1, "has_result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8006
    const-string v1, "index"

    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->val$mIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8007
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 8008
    return-void
.end method
