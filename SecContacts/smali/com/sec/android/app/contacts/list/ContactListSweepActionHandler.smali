.class public Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;
.super Ljava/lang/Object;
.source "ContactListSweepActionHandler.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;


# static fields
.field private static isVoLTEEnabled:Z

.field private static final model:Ljava/lang/String;


# instance fields
.field private isContactsList:Z

.field private isVoiceCallAvailabe:Z

.field private mCallBackground:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHasEmailAddress:Z

.field private mHasPhoneNumber:Z

.field private mLastDrawRectHeight:I

.field private mLastDrawRectWidth:I

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mMessageBackground:Landroid/graphics/drawable/Drawable;

.field private mMessageIcon:Landroid/graphics/drawable/Drawable;

.field private mMessageText:Ljava/lang/String;

.field private mNoNumberText:Ljava/lang/String;

.field private mSweepAactionBbarRightPadding:I

.field private mSweepActionBarLeftPadding:I

.field private mSweepActionBarTextSize:I

.field private mSweepActionBarTopPadding:I

.field private mVisibleScrollBarPadding:I

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "ro.product.model"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->model:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V
    .locals 1
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;Z)V
    .locals 6
    .parameter "context"
    .parameter "listView"
    .parameter "isContacts"

    .prologue
    const v5, 0x7f0d0425

    const v4, 0x7f0d0341

    const v3, 0x7f0c009d

    const v2, 0x7f02034b

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    .line 65
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasEmailAddress:Z

    .line 67
    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    .line 69
    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    .line 111
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 114
    iput-boolean p3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isContactsList:Z

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoiceCallAvailabe:Z

    .line 118
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {v0}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoLTEEnabled:Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02034d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    .line 129
    sget-boolean v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoLTEEnabled:Z

    if-eqz v0, :cond_6

    .line 130
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02034c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020653

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020655

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    .line 161
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isContactsList:Z

    if-eqz v0, :cond_7

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    .line 173
    :goto_2
    sget-object v0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->model:Ljava/lang/String;

    const-string v1, "sch-r830c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarLeftPadding:I

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0350

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageText:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d025f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    .line 185
    return-void

    .line 135
    :cond_3
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0424

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    :cond_4
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02034a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_0

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020349

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020654

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    goto/16 :goto_1

    .line 167
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    goto/16 :goto_2
.end method

.method private drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 13
    .parameter "canvas"
    .parameter "sweepText"
    .parameter "drawProgress"
    .parameter "xPosition"
    .parameter "yPosition"

    .prologue
    .line 350
    const-string v9, "ContactListSweepActionHandler"

    const-string v10, "========= DIVYA drawSweepText ========="

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/high16 v9, 0x3fa0

    const v10, 0x3e4ccccd

    sub-float v10, p3, v10

    mul-float v3, v9, v10

    .line 352
    .local v3, opacity:F
    float-to-double v9, v3

    const-wide v11, 0x3fa999999999999aL

    cmpg-double v9, v9, v11

    if-gez v9, :cond_0

    .line 353
    const/4 v3, 0x0

    .line 358
    :cond_0
    const/4 v7, -0x1

    .line 359
    .local v7, textColor:I
    const/high16 v6, -0x100

    .line 361
    .local v6, shadowColor:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 362
    .local v5, saveCount:I
    new-instance v8, Landroid/graphics/Paint;

    const/16 v9, 0x101

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 363
    .local v8, textPaint:Landroid/graphics/Paint;
    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 364
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 365
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v9, "huge_font"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    .line 366
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c009c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 368
    .local v2, SweepActionBarHugeTextSize:I
    int-to-float v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 369
    div-int/lit8 v9, v2, 0x2

    iget v10, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v9, v10

    int-to-float v0, v9

    move/from16 p5, v0

    .line 374
    .end local v2           #SweepActionBarHugeTextSize:I
    :goto_0
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    const/high16 v9, 0x4040

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    invoke-virtual {v8, v9, v10, v11, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 377
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p1, p2, v0, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 378
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 379
    return-void

    .line 371
    :cond_1
    iget v9, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method private setupDrawablesBounds(I)V
    .locals 5
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 383
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v4, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 387
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mVisibleScrollBarPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v4, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 391
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 392
    .local v0, tempDrawableRect:Landroid/graphics/Rect;
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 394
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 396
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarLeftPadding:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 401
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 402
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 403
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 405
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepAactionBbarRightPadding:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 408
    return-void
.end method


# virtual methods
.method public getHasEmailAddress()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasEmailAddress:Z

    return v0
.end method

.method public getHasPhoneNumber()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    return v0
.end method

.method public onDefineSweepAction(I)Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    .locals 6
    .parameter "itemIndex"

    .prologue
    const/4 v3, 0x0

    .line 189
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;

    invoke-direct {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;-><init>()V

    .line 192
    .local v2, sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, listItem:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 197
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 205
    .local v1, listItemWithoutHeaderAndBottomDivider:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->childIdForLocationHint:I

    .line 214
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoiceCallAvailabe:Z

    if-nez v3, :cond_0

    .line 215
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 217
    .end local v1           #listItemWithoutHeaderAndBottomDivider:Landroid/view/View;
    .end local v2           #sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_0
    :goto_0
    return-object v2

    .restart local v2       #sweepActionBarInfo:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarInfo;
    :cond_1
    move-object v2, v3

    .line 202
    goto :goto_0

    .restart local v1       #listItemWithoutHeaderAndBottomDivider:Landroid/view/View;
    :cond_2
    move-object v2, v3

    .line 211
    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "context"
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"
    .parameter "rect"
    .parameter "canvas"

    .prologue
    .line 223
    const-string v1, "ContactListSweepActionHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawSweepActionBar() / itemIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sweepState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isVoiceCallAvailabe:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    if-eqz p4, :cond_2

    const/4 v1, 0x1

    if-ne p4, v1, :cond_5

    :cond_2
    const/4 v9, 0x1

    .line 230
    .local v9, isTouching:Z
    :goto_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_6

    const/4 v8, 0x1

    .line 232
    .local v8, isDragging:Z
    :goto_2
    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 233
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->setupDrawablesBounds(I)V

    .line 234
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectHeight:I

    .line 235
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mLastDrawRectWidth:I

    .line 241
    :cond_4
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_7

    .line 242
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->onListShouldDrawSelector(IFI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 250
    if-eqz v9, :cond_0

    .line 251
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 252
    .local v10, saveCount:I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 257
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 229
    .end local v8           #isDragging:Z
    .end local v9           #isTouching:Z
    .end local v10           #saveCount:I
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 230
    .restart local v9       #isTouching:Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 269
    .restart local v8       #isDragging:Z
    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_b

    .line 270
    move v4, p3

    .line 273
    .local v4, drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 277
    .restart local v10       #saveCount:I
    neg-float v1, v4

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 280
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 297
    const/4 v7, 0x0

    .line 298
    .local v7, data:Z
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_9

    .line 299
    const/4 v7, 0x1

    .line 303
    :cond_8
    :goto_3
    if-eqz v7, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mMessageText:Ljava/lang/String;

    :goto_4
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0

    .line 300
    :cond_9
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasEmailAddress:Z

    if-eqz v1, :cond_8

    .line 301
    const/4 v7, 0x1

    goto :goto_3

    .line 303
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_4

    .line 307
    .end local v4           #drawProgress:F
    .end local v7           #data:Z
    .end local v10           #saveCount:I
    :cond_b
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->isContactsList:Z

    if-eqz v1, :cond_c

    const/high16 v1, -0x4080

    cmpg-float v1, p3, v1

    if-gez v1, :cond_c

    .line 308
    const/high16 p3, -0x4080

    .line 310
    :cond_c
    const/high16 v1, -0x4080

    mul-float v4, v1, p3

    .line 313
    .restart local v4       #drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 316
    .restart local v10       #saveCount:I
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    sub-float v2, v4, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 318
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 319
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 322
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 323
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 337
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mCallText:Ljava/lang/String;

    :goto_5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget v1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTextSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mSweepActionBarTopPadding:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->drawSweepText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mNoNumberText:Ljava/lang/String;

    goto :goto_5
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 1
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"

    .prologue
    .line 344
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasEmailAddress(Z)V
    .locals 0
    .parameter "hasEmailAddress"

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasEmailAddress:Z

    .line 420
    return-void
.end method

.method public setHasPhoneNumber(Z)V
    .locals 0
    .parameter "hasPhoneNumber"

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;->mHasPhoneNumber:Z

    .line 412
    return-void
.end method
