.class public Lcom/android/mms/ui/RecipientListItem;
.super Landroid/widget/LinearLayout;
.source "RecipientListItem.java"


# static fields
.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mContact:Lcom/android/mms/data/Contact;

.field private mContext:Landroid/content/Context;

.field private mFromView:Landroid/widget/TextView;

.field private mRecipientNumber:Ljava/lang/String;

.field private mSubjectView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/RecipientListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    .line 57
    sget-object v0, Lcom/android/mms/ui/RecipientListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "recipient"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/RecipientListItem;->setContactInfo(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getContact()Lcom/android/mms/data/Contact;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 66
    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mSubjectView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 69
    return-void
.end method

.method public setContactInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    .line 80
    iput-object p1, p0, Lcom/android/mms/ui/RecipientListItem;->mRecipientNumber:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTextColor(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "isDeleting"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListItem;->mSubjectView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    const v2, 0x207000f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 76
    return-void
.end method

.method public updateAvatarView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 89
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    if-eqz v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListItem;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/ui/RecipientListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 103
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    sget-object v0, Lcom/android/mms/ui/RecipientListItem;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method
