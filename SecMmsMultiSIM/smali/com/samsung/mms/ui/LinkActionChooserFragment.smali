.class public Lcom/samsung/mms/ui/LinkActionChooserFragment;
.super Landroid/app/DialogFragment;
.source "LinkActionChooserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;,
        Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;
    }
.end annotation


# static fields
.field static final ACTION_ADD_TO_BOOKMARKS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_ADD_TO_CONTACTS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_COPY_TEXT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_OPEN_URL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_SEND_EMAIL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_SEND_TEXT_MESSAGE:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field static final ACTION_VIEW_CONTACT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action; = null

.field private static final EXTRA_TEXT:Ljava/lang/String; = "text"

.field private static final EXTRA_URL:Ljava/lang/String; = "url"

.field private static final TAG:Ljava/lang/String; = "Mms/LinkActionChooserFragment"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;

    const v1, 0x7f0a0264

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_SEND_EMAIL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 170
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;

    const v1, 0x7f0a0261

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$ViewAction;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_OPEN_URL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 172
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;

    const v1, 0x7f0a0009

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$1;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 181
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;

    const v1, 0x7f0a0262

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$2;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_BOOKMARKS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 190
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$3;

    const v1, 0x7f0a0022

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$3;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_COPY_TEXT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 200
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$4;

    const v1, 0x7f0a0068

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$4;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 208
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$5;

    const v1, 0x7f0a0067

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$5;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_VIEW_CONTACT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 221
    new-instance v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$6;

    const v1, 0x7f0a0263

    invoke-direct {v0, v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment$6;-><init>(I)V

    sput-object v0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_SEND_TEXT_MESSAGE:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 156
    return-void
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 3
    .parameter "url"
    .parameter "text"

    .prologue
    .line 46
    new-instance v1, Lcom/samsung/mms/ui/LinkActionChooserFragment;

    invoke-direct {v1}, Lcom/samsung/mms/ui/LinkActionChooserFragment;-><init>()V

    .line 47
    .local v1, fg:Lcom/samsung/mms/ui/LinkActionChooserFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 135
    iget-object v1, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    .line 136
    .local v0, action:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;->execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0a0522

    const v10, 0x7f0a023d

    const v9, 0x7f0a011d

    const/4 v8, 0x1

    .line 56
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, args:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 58
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 61
    :cond_0
    const-string v4, "url"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    .line 62
    const-string v4, "text"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    .line 64
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f030064

    const v7, 0x7f0e01b2

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 66
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 67
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .local v2, result:Landroid/app/Dialog;
    move-object v3, v2

    .line 130
    .end local v2           #result:Landroid/app/Dialog;
    .local v3, result:Landroid/app/AlertDialog;
    :goto_0
    return-object v3

    .line 77
    .end local v3           #result:Landroid/app/AlertDialog;
    :cond_1
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_SEND_EMAIL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 79
    :cond_2
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_SEND_TEXT_MESSAGE:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 82
    :cond_3
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 83
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 84
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 85
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_VIEW_CONTACT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 123
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_COPY_TEXT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 125
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 129
    .restart local v2       #result:Landroid/app/Dialog;
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v3, v2

    .line 130
    .restart local v3       #result:Landroid/app/AlertDialog;
    goto :goto_0

    .line 86
    .end local v2           #result:Landroid/app/Dialog;
    .end local v3           #result:Landroid/app/AlertDialog;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_5
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 89
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_6
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 90
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 91
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_CALL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 94
    :cond_7
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 95
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 96
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 97
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_VIEW_CONTACT:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 104
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_SEND_TEXT_MESSAGE:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 98
    :cond_9
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 99
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 100
    :cond_a
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToContact(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 101
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 106
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_b
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 108
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v9, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .restart local v2       #result:Landroid/app/Dialog;
    move-object v3, v2

    .line 114
    .restart local v3       #result:Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 116
    .end local v2           #result:Landroid/app/Dialog;
    .end local v3           #result:Landroid/app/AlertDialog;
    :cond_c
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_OPEN_URL:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 118
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v5, "rtsp://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 119
    iget-object v4, p0, Lcom/samsung/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/samsung/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_BOOKMARKS:Lcom/samsung/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
