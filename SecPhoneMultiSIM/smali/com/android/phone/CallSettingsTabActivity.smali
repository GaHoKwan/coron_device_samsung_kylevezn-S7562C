.class public Lcom/android/phone/CallSettingsTabActivity;
.super Landroid/app/TabActivity;
.source "CallSettingsTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static mCurrentTab:I

.field private static mTabHost:Landroid/widget/TabHost;

.field public static mTabTitle:Ljava/lang/CharSequence;

.field public static state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallSettingsTabActivity;->mCurrentTab:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private setupSim1Tab()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    sget-object v0, Lcom/android/phone/CallSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 150
    invoke-static {p0, v4}, Lcom/android/phone/PhoneDualSimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v4}, Lcom/android/phone/PhoneDualSimUtils;->getSimIcon(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 152
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnSetting;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v2, "CallSettingTab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    if-ne v2, v5, :cond_1

    .line 162
    const-class v2, Lcom/android/phone/FdnSetting;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 203
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/phone/CallSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 204
    return-void

    .line 165
    :cond_1
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 167
    const-class v2, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 170
    :cond_2
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 172
    const-class v2, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 175
    :cond_3
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 177
    const-class v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 180
    :cond_4
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 182
    const-class v2, Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 185
    :cond_5
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 187
    const-class v2, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 188
    const-string v2, "isVoiceMailServiceDualSim"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 191
    :cond_6
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 193
    const-class v2, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 194
    const-string v2, "isVoiceMailSettings"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 197
    :cond_7
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 199
    const-class v2, Lcom/android/phone/VoiceMailNotificationActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method

.method private setupSim2Tab()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 207
    sget-object v0, Lcom/android/phone/CallSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 208
    invoke-static {p0, v4}, Lcom/android/phone/PhoneDualSimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v4}, Lcom/android/phone/PhoneDualSimUtils;->getSimIcon(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnSetting;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    const-string v2, "CallSettingTab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    if-ne v2, v4, :cond_1

    .line 220
    const-class v2, Lcom/android/phone/FdnSetting;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 261
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/phone/CallSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 262
    return-void

    .line 223
    :cond_1
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 225
    const-class v2, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 228
    :cond_2
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 230
    const-class v2, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 233
    :cond_3
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 235
    const-class v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 238
    :cond_4
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 240
    const-class v2, Lcom/android/phone/RingtoneKeytoneSettingsActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 243
    :cond_5
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 245
    const-class v2, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 246
    const-string v2, "isVoiceMailServiceDualSim"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 249
    :cond_6
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 251
    const-class v2, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    const-string v2, "isVoiceMailSettings"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0

    .line 255
    :cond_7
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 257
    const-class v2, Lcom/android/phone/VoiceMailNotificationActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "CallSettingMenu"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/CallSettingsTabActivity;->state:I

    .line 100
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 101
    sget-object v2, Lcom/android/phone/CallSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 105
    const-string v2, "TabTitleString"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CallSettingsTabActivity;->mTabTitle:Ljava/lang/CharSequence;

    .line 106
    sget-object v2, Lcom/android/phone/CallSettingsTabActivity;->mTabTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-direct {p0}, Lcom/android/phone/CallSettingsTabActivity;->setupSim1Tab()V

    .line 110
    invoke-direct {p0}, Lcom/android/phone/CallSettingsTabActivity;->setupSim2Tab()V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 115
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 119
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 124
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 290
    const-string v0, "CallSettingsTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 294
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 295
    const/4 v0, 0x1

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 146
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 128
    const-string v0, "CallSettingsTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/CallSettingsTabActivity;->mCurrentTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget v0, Lcom/android/phone/CallSettingsTabActivity;->mCurrentTab:I

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lcom/android/phone/CallSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 138
    :goto_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 139
    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/android/phone/CallSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "tabId"

    .prologue
    const/4 v4, 0x1

    .line 269
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 270
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, v4}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 275
    :cond_0
    const-string v1, "CallSettingsTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v1, Lcom/android/phone/CallSettingsTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sim1"

    if-ne v1, v2, :cond_1

    .line 279
    const/4 v1, 0x0

    sput v1, Lcom/android/phone/CallSettingsTabActivity;->mCurrentTab:I

    .line 286
    :goto_0
    return-void

    .line 283
    :cond_1
    sput v4, Lcom/android/phone/CallSettingsTabActivity;->mCurrentTab:I

    goto :goto_0
.end method
