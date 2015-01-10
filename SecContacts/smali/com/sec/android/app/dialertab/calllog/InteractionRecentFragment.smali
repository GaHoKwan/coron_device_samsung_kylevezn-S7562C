.class public Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
.super Landroid/app/ListFragment;
.source "InteractionRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;,
        Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;
    }
.end annotation


# static fields
.field public static SELECT_MAX_COUNT:I

.field private static bDBChanged:Z

.field private static mBundle:Landroid/os/Bundle;

.field public static mItemPosition:I

.field public static mItemPositionY:I


# instance fields
.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field POPUP_COUNT:Ljava/lang/String;

.field POPUP_FLAG:Ljava/lang/String;

.field VIEW_BY:Ljava/lang/String;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

.field private empty_layout:Landroid/widget/LinearLayout;

.field private isFromOnCreate:Z

.field private isPopupForeground:Z

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mCallHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEasyMode:Z

.field private mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field private mEmailCursor:Landroid/database/Cursor;

.field private mFocusState:Z

.field private mFromEmail:Z

.field private mIntent:Landroid/content/Intent;

.field private mItemCursor:Landroid/database/Cursor;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

.field private mNoLogs:Landroid/widget/TextView;

.field private mRecentListener:Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

.field private mViewBy:I

.field private popupCount:I

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    .line 118
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    .line 120
    sput v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    .line 122
    sput v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isPopupForeground:Z

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->popupCount:I

    .line 132
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 133
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isFromOnCreate:Z

    .line 135
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEasyMode:Z

    .line 347
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    .line 349
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    .line 351
    const-string v0, "popup_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->POPUP_COUNT:Ljava/lang/String;

    .line 353
    const-string v0, "popup_flag"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->POPUP_FLAG:Ljava/lang/String;

    .line 355
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    .line 655
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    .line 665
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isPopupForeground:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->popupCount:I

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    return-void
.end method

.method private setDoneButton(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onSelected(I)V

    .line 687
    return-void
.end method

.method private setObserver()V
    .locals 4

    .prologue
    .line 660
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 661
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    .line 662
    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 663
    return-void
.end method

.method private updateAllCheckState()V
    .locals 10

    .prologue
    .line 482
    const/4 v4, 0x1

    .line 483
    .local v4, everyBodyIsOn:Z
    const/4 v3, 0x1

    .line 484
    .local v3, everyBodyIsOff:Z
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 485
    .local v2, dataCount:I
    const/4 v1, 0x0

    .line 487
    .local v1, chekedCount:I
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    .line 488
    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_2

    or-int v8, v4, v3

    if-eqz v8, :cond_2

    .line 489
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v6

    .line 490
    .local v6, id:J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    .line 491
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 492
    .local v0, checked:Z
    if-nez v0, :cond_1

    .line 493
    const/4 v4, 0x0

    .line 488
    .end local v0           #checked:Z
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 495
    .restart local v0       #checked:Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 496
    const/4 v3, 0x0

    goto :goto_1

    .line 501
    .end local v0           #checked:Z
    .end local v6           #id:J
    :cond_2
    iget-boolean v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEasyMode:Z

    if-eqz v8, :cond_4

    .line 502
    if-eqz v3, :cond_3

    .line 503
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mRecentListener:Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

    invoke-interface {v8}, Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;->onAllDataDeleted()V

    .line 517
    :goto_2
    return-void

    .line 505
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mRecentListener:Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

    invoke-interface {v8}, Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;->onOneDataInputed()V

    goto :goto_2

    .line 508
    :cond_4
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setDoneButton(I)V

    .line 510
    if-eqz v3, :cond_5

    .line 511
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v8}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    goto :goto_2

    .line 513
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v8}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onOneDataInputed()V

    goto :goto_2
.end method


# virtual methods
.method public clearSelectedArray()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setAllItemChecked(Z)V

    .line 445
    return-void
.end method

.method public clickHandler(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 466
    :goto_0
    return-void

    .line 452
    :pswitch_0
    const-string v4, "InteractionRecentFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickhandler"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 454
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 455
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 456
    .local v1, position:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 458
    .local v2, sba:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 459
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 460
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x7f090086
        :pswitch_0
    .end packed-switch
.end method

.method public isSelectedItemMaxCount()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 522
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getCount()I

    move-result v5

    .line 523
    .local v5, itmeCount:I
    const/4 v7, 0x0

    .line 525
    .local v7, selectedItemCount:I
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 526
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 527
    .local v3, id:J
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-eqz v10, :cond_0

    .line 528
    iget-object v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    .line 529
    .local v1, checked:Z
    if-eqz v1, :cond_0

    .line 530
    add-int/lit8 v7, v7, 0x1

    .line 525
    .end local v1           #checked:Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    .end local v3           #id:J
    :cond_1
    sget v10, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "existingRecipientCount"

    invoke-virtual {v11, v12, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    sub-int v6, v10, v11

    .line 537
    .local v6, remainderCount:I
    if-le v7, v6, :cond_2

    .line 539
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isPopupForeground:Z

    .line 540
    iput v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->popupCount:I

    .line 541
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0365

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 543
    const v10, 0x7f0d0359

    new-instance v11, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$4;

    invoke-direct {v11, p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$4;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$3;

    invoke-direct {v11, p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$3;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 555
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 556
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 557
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isFromOnCreate:Z

    .line 562
    .end local v0           #alertDialog:Landroid/app/AlertDialog$Builder;
    :goto_1
    return v8

    :cond_2
    move v8, v9

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    if-nez p1, :cond_0

    .line 184
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    .line 186
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 187
    sput-object p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    .line 189
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->empty_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 441
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isFromOnCreate:Z

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "maxRecipientCount"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->SELECT_MAX_COUNT:I

    .line 200
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 204
    const v0, 0x7f040125

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->empty_layout:Landroid/widget/LinearLayout;

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mNoLogs:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mNoLogs:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 315
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 321
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 327
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 341
    :cond_4
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->bDBChanged:Z

    .line 342
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 343
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    if-nez v0, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isSelectedItemMaxCount()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 479
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    goto :goto_0

    .line 478
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->updateAllCheckState()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->co:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;

    .line 157
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    .line 161
    const-string v0, "InteractionRecentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFocusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    .line 166
    const-string v0, "InteractionRecentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@ mListView.getSelectedView() != null mItemPosition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v0, "InteractionRecentFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@ mListView.getSelectedView() != null mItemPositionY ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 178
    :cond_3
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    const/4 v10, 0x0

    .line 379
    if-nez p1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 384
    .local v4, itemCnt:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    sub-int v5, v6, v4

    .line 385
    .local v5, offset:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->POPUP_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->popupCount:I

    .line 386
    const-string v6, "searchFocusState"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    .line 388
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 389
    const-string v6, "selectedItemPosition"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    .line 390
    const-string v6, "selectedItemPositionY"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    .line 391
    const-string v6, "InteractionRecentFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@@ onRestoreInstanceState mItemPosition ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v6, "InteractionRecentFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@@ onRestoreInstanceState mItemPositionY ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    sget v7, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    sget v8, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 394
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->requestFocus()Z

    .line 396
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->POPUP_FLAG:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isPopupForeground:Z

    .line 397
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isPopupForeground:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isFromOnCreate:Z

    if-eqz v6, :cond_2

    .line 398
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0365

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->popupCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    iget v9, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->popupCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 400
    const v6, 0x7f0d0359

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$2;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$1;-><init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 412
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 413
    iput-boolean v10, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isFromOnCreate:Z

    .line 415
    .end local v0           #alertDialog:Landroid/app/AlertDialog$Builder;
    :cond_2
    if-gez v5, :cond_3

    .line 416
    const/4 v5, 0x0

    .line 418
    :cond_3
    const/4 v2, 0x0

    .line 419
    .local v2, chekedCount:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mViewBy:I

    .line 420
    if-lez v4, :cond_5

    .line 421
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 422
    .local v1, checkedarray:[Z
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 423
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    add-int v7, v3, v5

    aget-boolean v8, v1, v3

    invoke-virtual {v6, v7, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 424
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    .line 425
    add-int/lit8 v2, v2, 0x1

    .line 422
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 430
    .end local v1           #checkedarray:[Z
    .end local v3           #i:I
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->invalidate()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 21

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->setObserver()V

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 223
    .local v16, currentCountryIso:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v20

    .line 226
    .local v20, voiceMailNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 228
    .local v17, loadMode:Ljava/lang/String;
    if-eqz v17, :cond_3

    const-string v1, "easy-mode"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEasyMode:Z

    .line 235
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mIntent:Landroid/content/Intent;

    const-string v2, "additional"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "email-multi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/email"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    .line 238
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 284
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v1, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 288
    :cond_0
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    move-object/from16 v9, v16

    move-object/from16 v10, v20

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 305
    :cond_1
    :goto_2
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 306
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 307
    :cond_2
    invoke-super/range {p0 .. p0}, Landroid/app/ListFragment;->onResume()V

    .line 308
    return-void

    .line 232
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEasyMode:Z

    goto/16 :goto_0

    .line 240
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    .line 241
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "feature_apt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 243
    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v19, selectionBuffer:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 246
    .local v4, selection:Ljava/lang/String;
    const-string v15, "-1"

    .line 247
    .local v15, UNKNOWN_NUMBER:Ljava/lang/String;
    const-string v14, "-2"

    .line 248
    .local v14, PRIVATE_NUMBER:Ljava/lang/String;
    const-string v13, "P"

    .line 250
    .local v13, NW_RESTRICTED:Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "!=-1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, " AND number!=-2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, " AND number!=\'P\'"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    const-string v6, ""

    .line 259
    .local v6, sortOrder:Ljava/lang/String;
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 260
    const-string v6, "date DESC, _id DESC"

    .line 268
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1

    .line 261
    :cond_6
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "feature_kt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 263
    :cond_7
    const-string v6, "_id DESC"

    goto :goto_3

    .line 265
    :cond_8
    const-string v6, "date DESC"

    goto :goto_3

    .line 271
    .end local v4           #selection:Ljava/lang/String;
    .end local v6           #sortOrder:Ljava/lang/String;
    .end local v13           #NW_RESTRICTED:Ljava/lang/String;
    .end local v14           #PRIVATE_NUMBER:Ljava/lang/String;
    .end local v15           #UNKNOWN_NUMBER:Ljava/lang/String;
    .end local v19           #selectionBuffer:Ljava/lang/StringBuilder;
    :cond_9
    const/16 v18, 0x0

    .line 272
    .local v18, mLogSelector:I
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 273
    const/16 v18, 0x1

    .line 279
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_1

    .line 276
    :cond_a
    const/16 v18, 0x0

    goto :goto_4

    .line 295
    .end local v18           #mLogSelector:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    if-eqz v1, :cond_c

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 298
    :cond_c
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    move-object/from16 v9, v16

    move-object/from16 v10, v20

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 361
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 363
    .local v2, itemCnt:I
    const-string v3, "searchFocusState"

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFocusState:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    const-string v3, "selectedItemPosition"

    sget v4, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPosition:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    const-string v3, "selectedItemPositionY"

    sget v4, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemPositionY:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->VIEW_BY:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mViewBy:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->POPUP_COUNT:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->popupCount:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->POPUP_FLAG:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->isPopupForeground:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 370
    new-array v0, v2, [Z

    .line 371
    .local v0, checkedArray:[Z
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 372
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 375
    sput-object p1, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mBundle:Landroid/os/Bundle;

    .line 376
    return-void
.end method

.method public sendNum()V
    .locals 9

    .prologue
    .line 567
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 568
    const/4 v3, 0x0

    .line 569
    .local v3, selectedItemCount:I
    const-string v6, "InteractionRecentFragment"

    const-string v7, "sendNum"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 571
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 572
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 573
    .local v4, viewid:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 574
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mFromEmail:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 575
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEmailAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    .line 581
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    const-string v8, "number"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, number:Ljava/lang/String;
    const-string v6, "-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "-2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "-3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "P"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 587
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "5583;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    add-int/lit8 v3, v3, 0x1

    .line 570
    .end local v1           #number:Ljava/lang/String;
    .end local v4           #viewid:J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    .restart local v4       #viewid:J
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    iput-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mItemCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 594
    .end local v4           #viewid:J
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 595
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 596
    .local v2, resultIntent:Landroid/content/Intent;
    const-string v6, "result"

    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 597
    iget-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mEasyMode:Z

    if-eqz v6, :cond_4

    .line 598
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mRecentListener:Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

    invoke-interface {v6, v2}, Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;->onRecentListAction(Landroid/content/Intent;)V

    .line 604
    .end local v2           #resultIntent:Landroid/content/Intent;
    :cond_3
    :goto_2
    return-void

    .line 601
    .restart local v2       #resultIntent:Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v6, v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onRecentListAction(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .parameter "bCheckStatus"

    .prologue
    .line 607
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 609
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 610
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    invoke-interface {v2}, Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;->onAllDataDeleted()V

    .line 613
    return-void
.end method

.method public setOnMultiDataPickerActionListener(Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mListener:Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;

    .line 145
    return-void
.end method

.method public setOnRecentListListener(Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->mRecentListener:Lcom/sec/android/app/dialertab/calllog/OnRecentListListener;

    .line 149
    return-void
.end method
