.class public Lcom/android/mms/ui/MessageContactHeader;
.super Landroid/widget/LinearLayout;
.source "MessageContactHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MessageContactHeader"


# instance fields
.field private mContactList:Lcom/android/mms/data/ContactList;

.field protected mContactUri:Landroid/net/Uri;

.field protected mContext:Landroid/content/Context;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mRecipientStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageContactHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mExcludeMimes:[Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mRecipientStr:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public bindContactHeader(Lcom/android/mms/data/ContactList;)Z
    .locals 6
    .parameter "contactList"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 61
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactList:Lcom/android/mms/data/ContactList;

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 66
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return v3

    .line 70
    :cond_0
    const-string v2, ""

    .line 73
    .local v2, recipient:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 74
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 75
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, addr:Ljava/lang/String;
    const-string v3, "CBmessages"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    iget-object v3, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0132

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageContactHeader;->setDisplayName(Ljava/lang/CharSequence;)V

    :cond_2
    move v3, v4

    .line 125
    goto :goto_0

    .line 83
    .restart local v0       #addr:Ljava/lang/String;
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    :cond_3
    const-string v3, "Pushmessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 84
    iget-object v3, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    const v5, 0x7f0a01bb

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 87
    :cond_4
    const-string v3, "#CMAS#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 88
    iget-object v3, p0, Lcom/android/mms/ui/MessageContactHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 103
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 107
    .end local v0           #addr:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 108
    const-string v3, ", "

    invoke-virtual {p1, v3}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getRecipientString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mRecipientStr:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f0e013d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method public setContactList(Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader;->mContactList:Lcom/android/mms/data/ContactList;

    .line 131
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "displayName"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageContactHeader;->mRecipientStr:Ljava/lang/String;

    .line 156
    return-void
.end method
