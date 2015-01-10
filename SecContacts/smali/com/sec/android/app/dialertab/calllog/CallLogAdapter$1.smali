.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 351
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 355
    sparse-switch p2, :sswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return v10

    .line 357
    :sswitch_0
    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 359
    const/4 v4, 0x0

    .line 360
    .local v4, number:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 361
    .local v5, root:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .line 362
    .local v7, views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    iget-object v8, v7, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 363
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0099

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d009a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d009b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$500(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 375
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$100(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v5           #root:Landroid/view/View;
    .end local v7           #views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    :catch_0
    move-exception v1

    .line 377
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #number:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 387
    .restart local v5       #root:Landroid/view/View;
    const/4 v6, 0x0

    .line 388
    .local v6, tv:Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .line 389
    .restart local v7       #views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    iget-object v6, v7, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    .line 390
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 392
    .local v2, itemPosition:I
    iget-object v6, v7, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    .line 393
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 394
    .local v3, itemSize:I
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$1;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogsConfirmDlg(II)V

    goto/16 :goto_0

    .line 398
    .end local v2           #itemPosition:I
    .end local v3           #itemSize:I
    .end local v5           #root:Landroid/view/View;
    .end local v6           #tv:Landroid/widget/TextView;
    .end local v7           #views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    :sswitch_2
    const-string v8, "feature_chn_duos_cdma_gsm"

    invoke-static {v8}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v9, :cond_0

    .line 399
    sput-boolean v9, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mResumeFromDetail:Z

    goto/16 :goto_0

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x17 -> :sswitch_2
        0x43 -> :sswitch_1
    .end sparse-switch
.end method
