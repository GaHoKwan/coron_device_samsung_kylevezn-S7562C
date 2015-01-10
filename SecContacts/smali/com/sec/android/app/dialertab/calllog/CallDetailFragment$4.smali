.class Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$4;
.super Ljava/lang/Object;
.source "CallDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 354
    .local v0, isMMSAvailable:Z
    if-eqz v0, :cond_0

    .line 355
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailFragment$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0311

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
