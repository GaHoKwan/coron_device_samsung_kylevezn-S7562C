.class public Lcom/sec/android/app/contacts/group/GroupMemberListItemView;
.super Lcom/android/contacts/list/ContactListItemView;
.source "GroupMemberListItemView.java"


# instance fields
.field mEmergencyService:Ljava/lang/String;

.field mNotAssigned:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const v0, 0x7f0d0273

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->mNotAssigned:Ljava/lang/String;

    .line 40
    const v0, 0x7f0d0289

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->mEmergencyService:Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->setEmergencyNotAssignedText()V

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->setEmergencyNotAssigmedImage()V

    .line 43
    return-void
.end method

.method private setEmergencyNotAssigmedImage()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0204bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    const v0, 0x7f0206f1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->setBackgroundResource(I)V

    .line 53
    return-void
.end method

.method private setEmergencyNotAssignedText()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->mEmergencyService:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->mNotAssigned:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
