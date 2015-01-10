.class public Lcom/android/mms/ui/FakeCallActivity;
.super Landroid/app/Activity;
.source "FakeCallActivity.java"


# static fields
.field private static final MENU_INFO:I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field showDialog:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/FakeCallActivity;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/android/mms/ui/FakeCallActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FakeCallActivity$3;-><init>(Lcom/android/mms/ui/FakeCallActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/FakeCallActivity;->showDialog:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/FakeCallActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/mms/ui/FakeCallActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private tryAgainDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "tryListener"
    .parameter "doneListener"

    .prologue
    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0358

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 127
    const v1, 0x7f0a0356

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    const v1, 0x7f0a0029

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    const v1, 0x7f0a0357

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/FakeCallActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 131
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f03003a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, bar:Landroid/app/ActionBar;
    const v1, 0x7f0a0358

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 39
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 40
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 118
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 85
    :sswitch_0
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 87
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03002e

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0e00ec

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 89
    .local v1, img:Landroid/widget/ImageView;
    const v5, 0x7f020206

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 91
    .local v4, tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/mms/ui/FakeCallActivity$1;

    invoke-direct {v6, p0, v4}, Lcom/android/mms/ui/FakeCallActivity$1;-><init>(Lcom/android/mms/ui/FakeCallActivity;Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v7, 0x5f

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    const v5, 0x7f0a03cc

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 101
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 102
    const v5, 0x7f0a01e7

    new-instance v6, Lcom/android/mms/ui/FakeCallActivity$2;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/FakeCallActivity$2;-><init>(Lcom/android/mms/ui/FakeCallActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 114
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #img:Landroid/widget/ImageView;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #layout:Landroid/view/View;
    .end local v4           #tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 73
    .local v0, menuinfo:Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 74
    const v1, 0x7f0a03cd

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020202

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 76
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
