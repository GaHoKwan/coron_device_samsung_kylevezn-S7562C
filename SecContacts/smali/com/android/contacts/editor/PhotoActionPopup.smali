.class public Lcom/android/contacts/editor/PhotoActionPopup;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhotoActionPopup$Listener;,
        Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;,
        Lcom/android/contacts/editor/PhotoActionPopup$Modes;,
        Lcom/android/contacts/editor/PhotoActionPopup$Flags;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mphotoDlg:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;
    .locals 8
    .parameter "context"
    .parameter "anchorView"
    .parameter "listener"
    .parameter "mode"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v1, choices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    and-int/lit8 v3, p3, 0x2

    if-lez v3, :cond_0

    .line 99
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v4, 0x3

    const v5, 0x7f0d0068

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    and-int/lit8 v3, p3, 0x4

    if-lez v3, :cond_2

    .line 109
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v4, 0x2

    const v5, 0x7f0d01b1

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const v4, 0x7f0d01ae

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {p0}, Lcom/android/contacts/editor/PhotoActionPopup;->isAvailableSNote(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const v4, 0x7f0d0422

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    const-string v3, "feature_use_face_tag"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    new-instance v3, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v4, 0x5

    const v5, 0x7f0d0423

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f040153

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 127
    .local v0, adapter:Landroid/widget/ListAdapter;
    sput-object p0, Lcom/android/contacts/editor/PhotoActionPopup;->mContext:Landroid/content/Context;

    .line 128
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0065

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, -0x1

    new-instance v5, Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-direct {v5, v1, p2}, Lcom/android/contacts/editor/PhotoActionPopup$1;-><init>(Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    invoke-virtual {v3, v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    .line 201
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 202
    .local v2, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_3

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 207
    :cond_3
    sget-object v3, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    .line 208
    sget-object v3, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 211
    :cond_4
    sget-object v3, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    return-object v3
.end method

.method public static dismissDialog()V
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 265
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->mphotoDlg:Landroid/app/AlertDialog;

    .line 267
    :cond_0
    return-void
.end method

.method private static isAvailableSNote(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.snotebook"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v1, 0x1

    .line 258
    :goto_0
    return v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
