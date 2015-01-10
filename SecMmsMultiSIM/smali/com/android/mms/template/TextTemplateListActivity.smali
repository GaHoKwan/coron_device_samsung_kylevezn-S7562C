.class public Lcom/android/mms/template/TextTemplateListActivity;
.super Landroid/app/Activity;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;
    }
.end annotation


# static fields
.field private static final ACTIVITY_TITLE:Ljava/lang/String; = "activity_title"

.field private static final CREATE_SMS_TEMPLATE:I = 0x2

.field private static final DEBUG:Z = true

.field public static final DELETE_MODE:I = 0x1

.field private static final DELETE_SMS_TEMPLATE:I = 0x3

.field private static final EDIT_SMS_TEMPLATE:I = 0x1

.field private static final MENU_CREATE:I = 0x66

.field private static final MENU_DELETE:I = 0x67

.field private static final MENU_DELETE_CANCEL:I = 0x69

.field private static final MENU_DELETE_DONE:I = 0x68

.field private static final MENU_EDIT:I = 0x65

.field public static final NORMAL_MODE:I = 0x0

.field private static final OFFSET:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Mms/TextTemplateListActivity"

.field private static sOldLocale:Ljava/util/Locale;


# instance fields
.field private SelectAllText:Landroid/widget/TextView;

.field private TextTemplateSelector:I

.field private allCheckBox:Landroid/widget/CheckBox;

.field private mActionBar:Landroid/app/ActionBar;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mEmptyView:Landroid/view/View;

.field private mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuCreate:Landroid/view/MenuItem;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mTemplateContextMenu:Landroid/view/ContextMenu;

.field private final mTextTemplateListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

.field private selectAllUserUnchecked:Z

.field private seletAllLayout:Landroid/widget/LinearLayout;

.field private sendToComposer:Z

.field private templateCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/template/TextTemplateListActivity;->sOldLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateContextMenu:Landroid/view/ContextMenu;

    .line 73
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    .line 74
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 75
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 76
    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 85
    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->sendToComposer:Z

    .line 388
    new-instance v0, Lcom/android/mms/template/TextTemplateListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/template/TextTemplateListActivity$2;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 593
    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->selectAllUserUnchecked:Z

    return-void
.end method

.method private UpdateQuery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 556
    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "ListQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    sget-object v1, Lcom/android/mms/template/TextTemplateProvider;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/mms/template/TextTemplateProvider;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    .line 563
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/template/TextTemplateListActivity;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/template/TextTemplateListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/template/TextTemplateListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/template/TextTemplateListActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/template/TextTemplateListActivity;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/mms/template/TextTemplateListActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private confirmDeleteDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 5
    .parameter "NumberOfSelectedCount"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 686
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 687
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 689
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00a2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 692
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 693
    const v2, 0x7f0a01e7

    invoke-virtual {v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 694
    const v2, 0x7f0a01e9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 695
    if-le p1, v4, :cond_1

    .line 696
    const v2, 0x7f0a0482

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 700
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 701
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 702
    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 704
    return-void

    .line 698
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :cond_1
    const v2, 0x7f0a0483

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 574
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 576
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 577
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00a2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 579
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 580
    const v2, 0x7f0a01e7

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 581
    const v2, 0x7f0a01e9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    const v2, 0x7f0a0483

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 583
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 584
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 585
    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 586
    return-void
.end method

.method private getMode()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    return v0
.end method

.method private getTextTemplateSelector()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->TextTemplateSelector:I

    return v0
.end method

.method private initResource()V
    .locals 3

    .prologue
    const v2, 0x7f0e01f9

    const/4 v1, 0x1

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    .line 118
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 123
    :cond_0
    const v0, 0x7f0e0206

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    .line 125
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f0e01fa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->SelectAllText:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0e01fb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    .line 128
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/template/TextTemplateListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateListActivity$1;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void
.end method

.method private setMode(IZ)V
    .locals 3
    .parameter "mode"
    .parameter "needOnlyQuery"

    .prologue
    const/4 v2, 0x0

    .line 524
    iput p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    .line 526
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-nez v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 537
    :goto_0
    if-eqz p2, :cond_2

    .line 538
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    .line 549
    :goto_1
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->seletAllLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 540
    :cond_2
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListAdapter;->clearCheckedList()V

    .line 542
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 545
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->setTitleByMode()V

    .line 546
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    .line 547
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_1
.end method

.method private setTextTemplateSelector(I)V
    .locals 0
    .parameter "setValue"

    .prologue
    .line 566
    iput p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->TextTemplateSelector:I

    .line 567
    return-void
.end method

.method private setTitleByMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 202
    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 204
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0a033b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEmptyScreen(I)V
    .locals 3
    .parameter "listCount"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 223
    if-nez p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/template/TextTemplateListAdapter;->setMode(I)V

    .line 215
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 216
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->updateEmptyScreen(I)V

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 219
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 487
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 508
    :goto_0
    return-void

    .line 491
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 493
    :pswitch_0
    const-string v1, "android.intent.extra.TEMPLATE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, textStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/mms/template/TextTemplateProvider;->updateTemplate(Landroid/database/Cursor;ILjava/lang/String;Z)I

    .line 495
    invoke-direct {p0, v5, v4}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 496
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_0

    .line 501
    .end local v0           #textStr:Ljava/lang/String;
    :pswitch_1
    const-string v1, "android.intent.extra.TEMPLATE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .restart local v0       #textStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    invoke-virtual {v1, v0}, Lcom/android/mms/template/TextTemplateProvider;->createTemplate(Ljava/lang/String;)Landroid/net/Uri;

    .line 503
    invoke-direct {p0, v5, v4}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 504
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 599
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 600
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    if-nez v1, :cond_1

    .line 601
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e01fb

    if-ne v1, v2, :cond_6

    .line 607
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 608
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 609
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 610
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/template/TextTemplateListAdapter;->addCheckedItem(I)V

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 614
    .end local v0           #i:I
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->selectAllUserUnchecked:Z

    if-eqz v1, :cond_3

    .line 615
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->clearCheckedList()V

    .line 617
    :cond_3
    iput-boolean v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->selectAllUserUnchecked:Z

    .line 619
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    .line 644
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_0

    .line 623
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e020b

    if-ne v1, v2, :cond_5

    .line 625
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 626
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/template/TextTemplateListAdapter;->addCheckedItem(I)V

    .line 629
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedSize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 630
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 632
    :cond_7
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/template/TextTemplateListAdapter;->removeCheckedItem(I)V

    .line 635
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 637
    iput-boolean v3, p0, Lcom/android/mms/template/TextTemplateListActivity;->selectAllUserUnchecked:Z

    .line 638
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 752
    const-string v0, "Temp"

    const-string v1, "Hello"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void
.end method

.method public onClickDone()V
    .locals 4

    .prologue
    .line 648
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedSize()I

    move-result v2

    if-lez v2, :cond_0

    .line 649
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 650
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedList()Ljava/util/ArrayList;

    move-result-object v1

    .line 652
    .local v1, mArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 653
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedSize()I

    move-result v2

    new-instance v3, Lcom/android/mms/template/TextTemplateListActivity$3;

    invoke-direct {v3, p0}, Lcom/android/mms/template/TextTemplateListActivity$3;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    invoke-direct {p0, v2, v3}, Lcom/android/mms/template/TextTemplateListActivity;->confirmDeleteDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 683
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #mArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 179
    const-string v0, "Mms/TextTemplateListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/template/TextTemplateListActivity;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/template/TextTemplateListActivity;->sOldLocale:Ljava/util/Locale;

    .line 183
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    .line 184
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->setTitleByMode()V

    .line 185
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    const-string v1, "Mms/TextTemplateListActivity"

    const-string v4, "onCreate "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v1, 0x7f030081

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 95
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->initResource()V

    .line 97
    new-instance v1, Lcom/android/mms/template/TextTemplateProvider;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    .line 98
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateProvider;->open()Lcom/android/mms/template/TextTemplateProvider;

    .line 100
    new-instance v1, Lcom/android/mms/template/TextTemplateListAdapter;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getMode()I

    move-result v5

    invoke-direct {v1, p0, v4, v5}, Lcom/android/mms/template/TextTemplateListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    .line 101
    const v1, 0x7f0e0205

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    .line 102
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 104
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 105
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 107
    invoke-direct {p0, v3, v2}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 109
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "callFromSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->sendToComposer:Z

    .line 113
    return-void

    :cond_0
    move v1, v3

    .line 112
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    const-string v0, "TempTemplateLog"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 238
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 242
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateProvider;->close()V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_3

    .line 249
    iput-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    .line 250
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 251
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 511
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-eqz v0, :cond_0

    .line 512
    invoke-direct {p0, v1, v1}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 513
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    .line 514
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    .line 517
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-nez v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 520
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onListItemClick(I)V
    .locals 9
    .parameter "position"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 708
    invoke-direct {p0, p1}, Lcom/android/mms/template/TextTemplateListActivity;->setTextTemplateSelector(I)V

    .line 709
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 713
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 715
    .local v4, texts:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 716
    .local v0, checkedIndex:I
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, sBody:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->sendToComposer:Z

    if-ne v5, v7, :cond_1

    .line 719
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 720
    .local v3, sendIntent:Landroid/content/Intent;
    const-string v5, "com.android.mms"

    const-string v6, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 723
    if-le v0, v8, :cond_0

    .line 726
    const-string v5, "sms_body"

    aget-object v6, v4, v0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 747
    .end local v3           #sendIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 729
    .restart local v3       #sendIntent:Landroid/content/Intent;
    :cond_0
    const-string v5, "sms_body"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 733
    .end local v3           #sendIntent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 735
    .local v1, intent:Landroid/content/Intent;
    if-le v0, v8, :cond_2

    .line 738
    const-string v5, "android.intent.extra.TEMPLATE"

    aget-object v6, v4, v0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    :goto_2
    const-string v5, "activity_title"

    const v6, 0x7f0a02e9

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    invoke-virtual {p0, v1, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 741
    :cond_2
    const-string v5, "android.intent.extra.TEMPLATE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const v4, 0x7f0a02e6

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 314
    :goto_0
    return v1

    .line 258
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    const-string v1, "android.intent.extra.TEMPLATE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "activity_title"

    const v2, 0x7f0a02e5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 314
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 268
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    .line 270
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateContextMenu:Landroid/view/ContextMenu;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v2}, Landroid/view/ContextMenu;->close()V

    .line 275
    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 276
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_1

    .line 278
    :cond_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 284
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->onClickDone()V

    goto :goto_1

    .line 287
    :cond_2
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 293
    :sswitch_3
    iget v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-ne v2, v1, :cond_3

    .line 294
    invoke-direct {p0, v3, v3}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 295
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_1

    .line 297
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 303
    :sswitch_4
    iget v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-ne v2, v1, :cond_4

    .line 304
    invoke-direct {p0, v3, v3}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V

    .line 305
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_1

    .line 307
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 256
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x102002c -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "TempTemplateLog"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const v10, 0x7f0a00a2

    const/4 v9, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 326
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 328
    const/16 v7, 0x66

    const v8, 0x7f0a02e7

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    .line 329
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    const v8, 0x7f02000a

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 330
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 332
    const/16 v7, 0x67

    invoke-interface {p1, v6, v7, v6, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 333
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    const v8, 0x7f02000b

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 334
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 337
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v7, v5, :cond_1

    .line 338
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 343
    :goto_0
    const/16 v7, 0x69

    const v8, 0x7f0a01e9

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 344
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 346
    const/16 v7, 0x68

    invoke-interface {p1, v6, v7, v6, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 347
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 348
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 350
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    .line 351
    .local v2, menuCreate:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    .line 352
    .local v3, menuDelete:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCancel:Landroid/view/MenuItem;

    .line 353
    .local v1, menuCancel:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 355
    .local v4, menuDone:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 356
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    move v0, v5

    .line 358
    .local v0, isLandscape:Z
    :goto_1
    iget v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMode:I

    if-eqz v7, :cond_5

    .line 359
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 360
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 361
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 364
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/template/TextTemplateListAdapter;->getCheckedSize()I

    move-result v7

    if-lez v7, :cond_3

    .line 365
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 370
    :goto_2
    if-eqz v0, :cond_4

    .line 371
    const v5, 0x7f020285

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 372
    const v5, 0x7f020286

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 385
    .end local v0           #isLandscape:Z
    :cond_0
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    return v5

    .line 340
    .end local v1           #menuCancel:Landroid/view/MenuItem;
    .end local v2           #menuCreate:Landroid/view/MenuItem;
    .end local v3           #menuDelete:Landroid/view/MenuItem;
    .end local v4           #menuDone:Landroid/view/MenuItem;
    :cond_1
    iget-object v7, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .restart local v1       #menuCancel:Landroid/view/MenuItem;
    .restart local v2       #menuCreate:Landroid/view/MenuItem;
    .restart local v3       #menuDelete:Landroid/view/MenuItem;
    .restart local v4       #menuDone:Landroid/view/MenuItem;
    :cond_2
    move v0, v6

    .line 356
    goto :goto_1

    .line 367
    .restart local v0       #isLandscape:Z
    :cond_3
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 374
    :cond_4
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 375
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 378
    :cond_5
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 379
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 380
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 381
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 149
    const-string v0, "TempTemplateLog"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    const-string v0, "TempTemplateLog"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->setTitleByMode()V

    .line 157
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->SelectAllText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->SelectAllText:Landroid/widget/TextView;

    const v1, 0x7f0a0122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 161
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "TempTemplateLog"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 173
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 409
    invoke-direct {p0, p3}, Lcom/android/mms/template/TextTemplateListActivity;->setTextTemplateSelector(I)V

    .line 412
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, texts:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 417
    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 418
    .local v0, checkedIndex:I
    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, sBody:Ljava/lang/String;
    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    .line 423
    aget-object v4, v3, v0

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 429
    :goto_0
    new-instance v1, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;-><init>(Lcom/android/mms/template/TextTemplateListActivity;Lcom/android/mms/template/TextTemplateListActivity$1;)V

    .line 431
    .local v1, l:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;
    const v4, 0x7f0a006e

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 432
    const/4 v4, 0x3

    const v5, 0x7f0a00a2

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 433
    return-void

    .line 426
    .end local v1           #l:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method
