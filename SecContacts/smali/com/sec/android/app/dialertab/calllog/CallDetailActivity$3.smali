.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const v5, 0x7f0d0125

    const/4 v4, 0x1

    .line 532
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    #calls: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    :goto_0
    return-void

    .line 536
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 539
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 540
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v1, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
