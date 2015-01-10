.class public Lcom/android/contacts/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;
.source "ContactListFilterView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivatedBackground:I

.field private mDivider:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIcon:Landroid/widget/ImageView;

.field private mIndent:Landroid/view/View;

.field private mLabel:Landroid/widget/TextView;

.field private mListContainer:Landroid/widget/LinearLayout;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSettingLayout:Landroid/widget/FrameLayout;

.field private mSingleAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/contacts/list/ContactListFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListFilterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private bindView(IIZ)V
    .locals 3
    .parameter "iconResource"
    .parameter "textResource"
    .parameter "dropdown"

    .prologue
    const/16 v1, 0x8

    .line 232
    if-eqz p1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_0
    return-void

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public bindView(Z)V
    .locals 6
    .parameter "dropdown"

    .prologue
    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 98
    if-eqz p1, :cond_1

    .line 99
    iget v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/ThemeUtils;->getActivatedBackground(Landroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    .line 102
    :cond_0
    iget v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 113
    const v1, 0x7f090161

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mListContainer:Landroid/widget/LinearLayout;

    .line 114
    const v1, 0x7f090024

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    .line 115
    const v1, 0x7f0900e8

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f090163

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    .line 117
    const v1, 0x7f090130

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mDivider:Landroid/view/View;

    .line 118
    const v1, 0x7f090162

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    .line 120
    const v1, 0x7f090164

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    .line 121
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v1, :cond_5

    .line 130
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 229
    :cond_4
    :goto_0
    return-void

    .line 134
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 161
    :pswitch_1
    const v1, 0x7f0d01d7

    invoke-direct {p0, v3, v1, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 136
    :pswitch_2
    const v1, 0x7f020525

    const v2, 0x7f0d01d2

    invoke-direct {p0, v1, v2, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 141
    :pswitch_3
    const v1, 0x7f020548

    const v2, 0x7f0d01d3

    invoke-direct {p0, v1, v2, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 146
    :pswitch_4
    const v2, 0x7f020360

    if-eqz p1, :cond_6

    const v1, 0x7f0d01d5

    :goto_1
    invoke-direct {p0, v2, v1, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    .line 149
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSettingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    :cond_6
    const v1, 0x7f0d01d4

    goto :goto_1

    .line 157
    :pswitch_5
    const v1, 0x7f0d01d6

    invoke-direct {p0, v3, v1, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 165
    :pswitch_6
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 167
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :goto_2
    const-string v1, "vnd.sec.contact.phone"

    iget-object v4, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d014b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_3
    if-eqz p1, :cond_4

    .line 215
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 169
    :cond_7
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f020753

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 174
    :cond_8
    const-string v1, "vnd.sec.contact.sim"

    iget-object v4, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 179
    .local v0, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 195
    .end local v0           #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_9
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "vnd.sec.contact.sim2"

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 197
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 203
    :cond_a
    const-string v1, "vnd.sec.contact.sim2"

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 205
    .restart local v0       #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 208
    .end local v0           #manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_b
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 220
    :pswitch_7
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v4, 0x7f020539

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v4, v4, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    if-eqz p1, :cond_4

    .line 224
    iget-object v4, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSingleAccount:Z

    if-eqz v1, :cond_c

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    move v1, v3

    goto :goto_4

    .line 134
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setActivated(Z)V
    .locals 2
    .parameter "activated"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/android/contacts/list/ContactListFilterView;->TAG:Ljava/lang/String;

    const-string v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 73
    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSingleAccount:Z

    .line 81
    return-void
.end method
