.class public Lcom/android/mms/ui/GroupMessagingRecipientListActivity;
.super Landroid/app/Activity;
.source "GroupMessagingRecipientListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;,
        Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;
    }
.end annotation


# static fields
.field private static final ADD_DUPPLICATED_RECIPIENT:I = 0x3

.field private static final ADD_INVALIDE_RECIPIENT:I = 0x4

.field private static final ADD_INVALID_ARGUMENT:I = 0x1

.field private static final ADD_MAX_RECIPIENTS:I = 0x2

.field private static final ADD_SUCCESS:I = 0x0

.field private static final MENU_COMPOSE_GROUP_MESSAGE_ICON:I = 0x0

.field public static final MSG_ADD_RECIPIENT:I = 0x0

.field private static final ONLINE_SEARCH_INTENT_EXTRA_VALUE:Ljava/lang/String; = "onlineSearch"

.field private static final REQUEST_CODE_PICK_CONTACT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/GroupMessagingRecipientListActivity"


# instance fields
.field private GroupMessagingList:Lcom/android/mms/data/ContactList;

.field private ToRecipientNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;

.field private mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

.field private mAddRecipientsField:Landroid/widget/LinearLayout;

.field private mComposerPanelBg:I

.field mContext:Landroid/content/Context;

.field private mCurrentRecipients:[Ljava/lang/String;

.field private mEditorBg:I

.field private mIntent:Landroid/content/Intent;

.field private mInvalidRecipientsDialog:Landroid/app/AlertDialog;

.field private mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

.field private final mOnChildClickListener:Landroid/view/View$OnClickListener;

.field private mRecipientButton:Landroid/widget/ImageView;

.field public final mRecipientsEditorHandler:Landroid/os/Handler;

.field private mTextColor:I

.field private mTextFieldColor:I

.field private mshowDupplicatedRecipientToast:Landroid/widget/Toast;

.field recipientListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    .line 97
    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mCurrentRecipients:[Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->ToRecipientNumbers:Ljava/util/ArrayList;

    .line 99
    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    .line 101
    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    .line 102
    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mInvalidRecipientsDialog:Landroid/app/AlertDialog;

    .line 263
    new-instance v0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$4;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mOnChildClickListener:Landroid/view/View$OnClickListener;

    .line 403
    new-instance v0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$5;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientsEditorHandler:Landroid/os/Handler;

    .line 583
    return-void
.end method

.method private AddNumberByRecipientEditor(ZZ)Z
    .locals 14
    .parameter "updateToButtonLayout"
    .parameter "showErrorDialog"

    .prologue
    .line 419
    iget-object v12, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    if-nez v12, :cond_0

    .line 420
    const/4 v12, 0x1

    .line 472
    :goto_0
    return v12

    .line 422
    :cond_0
    iget-object v12, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 423
    .local v10, recipientsText:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 424
    const/4 v12, 0x1

    goto :goto_0

    .line 426
    :cond_1
    const-string v12, "[,;]"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, recipients:[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 429
    .local v1, contactList:Lcom/android/mms/data/ContactList;
    const/4 v2, 0x0

    .line 430
    .local v2, count:I
    const/4 v4, 0x0

    .line 431
    .local v4, invalidCount:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v5, invalidRecipients:Ljava/lang/StringBuilder;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v8, v0, v3

    .line 435
    .local v8, recipient:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 437
    .local v7, number:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-direct {p0, v7, v12}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->AddNumberToList(Ljava/lang/String;Z)I

    move-result v11

    .line 439
    .local v11, ret:I
    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 440
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->showMaxRecipientToast()V

    .line 458
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #recipient:Ljava/lang/String;
    .end local v11           #ret:I
    :cond_2
    if-lez v2, :cond_3

    .line 459
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->AddContactFromContact(Lcom/android/mms/data/ContactList;)V

    .line 460
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->updateList()V

    .line 464
    :cond_3
    const/16 v12, 0x8

    iget-object v13, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsField:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v12, v13, :cond_a

    .line 465
    if-lez v4, :cond_a

    if-eqz p2, :cond_a

    .line 466
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, p0, v12}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->alertInvalidRecipientsPopup(Landroid/content/Context;Ljava/lang/String;)V

    .line 467
    const/4 v12, 0x0

    goto :goto_0

    .line 442
    .restart local v7       #number:Ljava/lang/String;
    .restart local v8       #recipient:Ljava/lang/String;
    .restart local v11       #ret:I
    :cond_4
    const/4 v12, 0x3

    if-ne v11, v12, :cond_6

    .line 443
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->showDupplicatedRecipientToast()V

    .line 433
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 444
    :cond_6
    const/4 v12, 0x4

    if-eq v11, v12, :cond_7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 446
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_8

    .line 447
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_8
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 452
    :cond_9
    if-nez v11, :cond_5

    .line 453
    const/4 v12, 0x0

    invoke-static {v7, v12}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 472
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #recipient:Ljava/lang/String;
    .end local v11           #ret:I
    :cond_a
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method private AddNumberToList(Ljava/lang/String;Z)I
    .locals 9
    .parameter "recipient"
    .parameter "addInvalidRecipient"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 482
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 533
    :goto_0
    return v4

    .line 485
    :cond_0
    const/4 v1, 0x0

    .line 487
    .local v1, hasInvalidRecipient:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinRecipientLength()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 488
    const/4 v1, 0x1

    .line 491
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 492
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientLength()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 494
    const/4 v1, 0x1

    .line 499
    :cond_2
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 501
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableAddressPlusEdit()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x2b

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 502
    const/4 v1, 0x1

    .line 505
    :cond_3
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 506
    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 507
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    .line 508
    goto :goto_0

    .line 512
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    :cond_6
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 513
    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 514
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v4, v5

    .line 515
    goto/16 :goto_0

    .line 519
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_8
    const/4 v1, 0x1

    .line 522
    :cond_9
    if-ne v1, v4, :cond_a

    if-nez p2, :cond_a

    move v4, v6

    .line 523
    goto/16 :goto_0

    .line 526
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    .line 527
    .local v3, recipientLimit:I
    iget-object v4, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v3, :cond_b

    .line 528
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 530
    :cond_b
    if-eqz v1, :cond_c

    move v4, v6

    .line 531
    goto/16 :goto_0

    .line 533
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->updateList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;ZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->AddNumberByRecipientEditor(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)Lcom/android/mms/ui/GroupMessagingRecipientsEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    return-object v0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 4

    .prologue
    .line 274
    const-string v2, "Mms/GroupMessagingRecipientListActivity"

    const-string v3, "getRecipients()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 277
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mCurrentRecipients:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mCurrentRecipients:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return-object v0
.end method

.method private initGroupMessagingRecipientsEditor()V
    .locals 3

    .prologue
    .line 152
    const-string v1, "Mms/GroupMessagingRecipientListActivity"

    const-string v2, "initGroupMessagingRecipientsEditor()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->setTextFieldColor()V

    .line 156
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsField:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 157
    const v1, 0x7f0e0105

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsField:Landroid/widget/LinearLayout;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    if-nez v1, :cond_1

    .line 161
    const v1, 0x7f0e0106

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    .line 162
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    invoke-virtual {v1, p0}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->setComposer(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    .line 163
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mEditorBg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 164
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    iget v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    new-instance v0, Lcom/android/mms/ui/RecipientsAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, addressAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    .end local v0           #addressAdapter:Lcom/android/mms/ui/RecipientsAdapter;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    const v2, 0x7f0a0231

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 172
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    const v2, 0x2000006

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 174
    const v1, 0x7f0e0107

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientButton:Landroid/widget/ImageView;

    .line 175
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$1;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 186
    return-void
.end method

.method private setTextFieldColor()V
    .locals 2

    .prologue
    .line 189
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "setTextFieldColor()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mTextFieldColor:I

    .line 191
    const v0, 0x7f0202b7

    iput v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mEditorBg:I

    .line 192
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020377

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mTextColor:I

    .line 193
    return-void
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 287
    .local v0, bar:Landroid/app/ActionBar;
    const v1, 0x7f0a027d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 288
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 289
    return-void
.end method

.method private showDupplicatedRecipientToast()V
    .locals 2

    .prologue
    .line 543
    const v1, 0x7f0a01ab

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 546
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    .line 550
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 553
    return-void

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mshowDupplicatedRecipientToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showMaxRecipientToast()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 537
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    .line 538
    .local v1, recipientLimit:I
    const v2, 0x7f0a01ac

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, message:Ljava/lang/String;
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 540
    return-void
.end method

.method private updateList()V
    .locals 5

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    .line 238
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 240
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/ui/RecipientListItem;

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/RecipientListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    new-instance v1, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    const v2, 0x7f030040

    iget-object v3, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mOnChildClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    .line 245
    const v1, 0x7f0e0108

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->list:Landroid/widget/ListView;

    .line 246
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$3;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 261
    return-void
.end method


# virtual methods
.method public AddContactFromContact(Lcom/android/mms/data/ContactList;)V
    .locals 8
    .parameter "numbers"

    .prologue
    .line 368
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 369
    .local v1, existedRecipients:Lcom/android/mms/data/ContactList;
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 370
    :cond_0
    new-instance v6, Lcom/android/mms/data/ContactList;

    invoke-direct {v6}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    .line 371
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    .line 372
    .local v5, number:Lcom/android/mms/data/Contact;
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 373
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 377
    .local v0, existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 379
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    .end local v0           #existedRecipient:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #number:Lcom/android/mms/data/Contact;
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #existedRecipients:Lcom/android/mms/data/ContactList;
    check-cast v1, Lcom/android/mms/data/ContactList;

    .line 385
    .restart local v1       #existedRecipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    .line 386
    .restart local v5       #number:Lcom/android/mms/data/Contact;
    const/4 v4, 0x0

    .line 387
    .local v4, isAdded:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 388
    .restart local v0       #existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 391
    .end local v0           #existedRecipient:Lcom/android/mms/data/Contact;
    :cond_7
    if-nez v4, :cond_5

    .line 392
    iget-object v6, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 395
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isAdded:I
    .end local v5           #number:Lcom/android/mms/data/Contact;
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 396
    return-void
.end method

.method public ReplyAllMessage(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "recipients"

    .prologue
    .line 611
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v3, mNumberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 613
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 614
    .local v5, tempRecipient:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v5           #tempRecipient:Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v4, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 618
    .local v4, replyallIntent:Landroid/content/Intent;
    const-string v6, "sendto"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 619
    const/high16 v6, 0x1400

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 620
    const-string v6, "smsto:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 621
    const-string v6, "replyAll"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 622
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 623
    return-void
.end method

.method public alertInvalidRecipientsPopup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "invalidRecipients"

    .prologue
    .line 556
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 558
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 559
    const v1, 0x7f0a01f5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 560
    const v1, 0x7f0a004f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 562
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsListener;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    new-instance v1, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$InvalidRecipientsKeyListener;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 564
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 565
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    .line 333
    const-string v3, "Mms/GroupMessagingRecipientListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: requestCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    const/4 v0, 0x1

    .line 338
    .local v0, appendMedia:Z
    packed-switch p1, :pswitch_data_0

    .line 363
    :cond_0
    :goto_0
    const-string v3, "Mms/GroupMessagingRecipientListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult(),requestCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void

    .line 341
    :pswitch_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 344
    .local v2, selectedNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, contacts:Lcom/android/mms/data/ContactList;
    const-string v3, "onlineSearch"

    const-string v4, "mode"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    invoke-static {v2, v6}, Lcom/android/mms/data/Contact;->get(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 351
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->AddContactFromContact(Lcom/android/mms/data/ContactList;)V

    goto :goto_0

    .line 349
    :cond_1
    invoke-static {v2, v6}, Lcom/android/mms/data/Contact;->getByIds(Ljava/util/ArrayList;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    goto :goto_1

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 311
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mRecipientButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, phonebookIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 315
    :cond_0
    const-string v1, "additional"

    const-string v2, "email-phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    :goto_0
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mAddRecipientsEditor:Lcom/android/mms/ui/GroupMessagingRecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/GroupMessagingRecipientsEditor;->getRecipientCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePickContactLimit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    const-string v1, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    :goto_1
    const-string v1, "FromMMS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 330
    .end local v0           #phonebookIntent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 317
    .restart local v0       #phonebookIntent:Landroid/content/Intent;
    :cond_2
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 324
    :cond_3
    const-string v1, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 629
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->initGroupMessagingRecipientsEditor()V

    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->setupActionBar()V

    .line 117
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iput-object p0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mIntent:Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mCurrentRecipients:[Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    .line 124
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    if-eqz v0, :cond_0

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    .line 297
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 301
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 303
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 304
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 132
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->GroupMessagingList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, recipients:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->ReplyAllMessage(Landroid/content/Context;[Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x1

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 201
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 145
    const v0, 0x7f0a0005

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02028f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 208
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->mListAdapter:Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->notifyDataSetChanged()V

    .line 210
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity;->updateList()V

    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 233
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2
    .parameter "updated"

    .prologue
    .line 214
    const-string v0, "Mms/GroupMessagingRecipientListActivity"

    const-string v1, "onUpdate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "ContactResult"

    const-string v1, "Contact onUpdate Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListActivity$2;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method
