.class Lcom/android/mms/ui/VMessageViewerActivity$1;
.super Ljava/lang/Object;
.source "VMessageViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/VMessageViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/VMessageViewerActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/VMessageViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/mms/ui/VMessageViewerActivity$1;->this$0:Lcom/android/mms/ui/VMessageViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/VMessageViewerActivity$1;->this$0:Lcom/android/mms/ui/VMessageViewerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/VMessageViewerActivity;->importMessageFromSDCARD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/VMessageViewerActivity$1;->this$0:Lcom/android/mms/ui/VMessageViewerActivity;

    const v1, 0x7f0a00cb

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/VMessageViewerActivity$1;->this$0:Lcom/android/mms/ui/VMessageViewerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 115
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/VMessageViewerActivity$1;->this$0:Lcom/android/mms/ui/VMessageViewerActivity;

    const v1, 0x7f0a034b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
