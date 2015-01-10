.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 563
    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->keyPressed:Z

    if-eqz v1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    sget v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPointerY:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getEnableTouchScreenHeight()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_0

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/IntentProvider;

    .line 571
    .local v0, intentProvider:Lcom/sec/android/app/dialertab/calllog/IntentProvider;
    if-eqz v0, :cond_0

    .line 572
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->keyPressed:Z

    .line 573
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$4;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
