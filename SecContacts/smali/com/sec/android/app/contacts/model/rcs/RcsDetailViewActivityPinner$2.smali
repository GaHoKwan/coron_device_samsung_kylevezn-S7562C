.class Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$2;
.super Ljava/lang/Object;
.source "RcsDetailViewActivityPinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 286
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mActivity:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewActivityPinner;->mFtIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
