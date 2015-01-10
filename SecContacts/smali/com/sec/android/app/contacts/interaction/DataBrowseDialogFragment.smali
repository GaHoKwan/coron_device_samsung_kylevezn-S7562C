.class public Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
.super Landroid/app/DialogFragment;
.source "DataBrowseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static mDataBrowseDialogFragment:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

.field private mChecked:Z

.field private mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

.field private mName:Ljava/lang/String;

.field private mPartition:Ljava/lang/String;

.field private mSpeedDial:Z

.field private mUri:Landroid/net/Uri;

.field private mdataInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mDataBrowseDialogFragment:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mDataBrowseDialogFragment:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mDataBrowseDialogFragment:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    .line 69
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mDataBrowseDialogFragment:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 97
    const-string v9, "DataBrowseDialogContactsFragment"

    const-string v10, "onCreateDialog"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, args:Landroid/os/Bundle;
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    .line 101
    const-string v9, "contactDatas"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iput-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    .line 102
    const-string v9, "name"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    .line 103
    const-string v9, "uri"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    iput-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    .line 104
    const-string v9, "speedDial"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mSpeedDial:Z

    .line 106
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget-object v9, v9, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    iput-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mdataInfo:Ljava/util/ArrayList;

    .line 107
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget-object v9, v9, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    iput-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    .line 108
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    iget-object v9, v9, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    iput-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mPartition:Ljava/lang/String;

    .line 110
    new-instance v9, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f040153

    iget-object v12, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mdataInfo:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAccountType:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    .line 113
    new-instance v2, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)V

    .line 130
    .local v2, clickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 131
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f04006f

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 133
    .local v8, view:Landroid/view/View;
    const v9, 0x7f09001e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 135
    .local v3, divier:Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 137
    const v9, 0x7f0901ae

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 138
    .local v7, setPrimaryView:Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    const v9, 0x7f0901af

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 141
    .local v6, setAsDefaultCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v9, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;

    invoke-direct {v9, p0, v6}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 155
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    iget-object v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseListAdapter;

    const/4 v10, -0x1

    invoke-virtual {v1, v9, v10, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    iget-boolean v9, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mSpeedDial:Z

    if-nez v9, :cond_0

    .line 158
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 160
    :cond_0
    const/high16 v9, 0x104

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 162
    .local v5, result:Landroid/app/AlertDialog;
    return-object v5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 167
    const-string v0, "DataBrowseDialogContactsFragment"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 169
    const-string v0, "contactDatas"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    const-string v0, "name"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "ischecked"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    const-string v0, "uri"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    const-string v0, "speedDial"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mSpeedDial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    return-void
.end method

.method public show(Landroid/app/FragmentManager;Landroid/app/Fragment;Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 4
    .parameter "fragmentManager"
    .parameter
    .parameter "contactdatas"
    .parameter "name"
    .parameter "uri"
    .parameter "isspeeddial"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;",
            "Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, targetFragment:Landroid/app/Fragment;,"TF;"
    const-string v2, "DataBrowseDialogContactsFragment"

    const-string v3, "show"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "contactDatas"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    const-string v2, "name"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "uri"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    const-string v2, "speedDial"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 87
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
