.class public Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;
.super Landroid/app/TabActivity;
.source "ServiceNumbersTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static SIM_ONE:I

.field private static SIM_ZERO:I

.field private static mSimInfoChanged:Z

.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mCurrentTab:I

.field private mSim1Name:Ljava/lang/String;

.field private mSim2Name:Ljava/lang/String;

.field manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ZERO:I

    .line 59
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mCurrentTab:I

    return-void
.end method

.method public static getSimIconChanged()Z
    .locals 3

    .prologue
    .line 203
    const-string v0, "ServiceNumbersTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSimIconChanged called] mSimInfoChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSimInfoChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-boolean v0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSimInfoChanged:Z

    return v0
.end method

.method public static setSimIconChanged(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 209
    const-string v0, "ServiceNumbersTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIconChanged flag :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sput-boolean p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSimInfoChanged:Z

    .line 211
    return-void
.end method

.method private setupSim1Tab()V
    .locals 5

    .prologue
    .line 143
    sget-object v0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 144
    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "setupSim1Tab"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim1Name:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim1Name:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v2, "SerivceNumbersTab"

    const-string v3, "content://icc/sdn"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 156
    sget-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 170
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sget v2, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ZERO:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sget v4, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ZERO:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 162
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    const-string v2, "SerivceNumbersTab"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 168
    sget-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method private setupSim2Tab()V
    .locals 5

    .prologue
    .line 173
    sget-object v0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 174
    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "setupSim2Tab"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim2Name:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim2Name:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 181
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string v2, "SerivceNumbersTab"

    const-string v3, "content://icc2/sdn"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 186
    sget-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 200
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sget v2, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ONE:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    sget v4, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->SIM_ONE:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 192
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const-string v2, "SerivceNumbersTab"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-class v2, Lcom/sec/android/app/contacts/activities/ServiceNumbers;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 198
    sget-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x4

    .line 70
    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "oncreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 74
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    .line 80
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setSimIconChanged(Z)V

    .line 82
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 85
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim1Tab()V

    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim2Tab()V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "ServiceNumbersTabActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 93
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 234
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 230
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "ServiceNumbersTabActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 137
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mCurrentTab:I

    .line 140
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 99
    const/4 v1, 0x2

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    .line 102
    .local v0, changed:[Z
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimInfo()[Z

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->getSimIconChanged()Z

    move-result v1

    if-eq v1, v4, :cond_0

    aget-boolean v1, v0, v3

    if-eqz v1, :cond_2

    aget-boolean v1, v0, v4

    if-eqz v1, :cond_2

    .line 107
    :cond_0
    const-string v1, "ServiceNumbersTabActivity"

    const-string v2, "onResume true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 110
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim1Tab()V

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim2Tab()V

    .line 115
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setSimIconChanged(Z)V

    .line 128
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 131
    return-void

    .line 116
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim1Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mSim2Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_3
    sget-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 120
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 123
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim1Tab()V

    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ServiceNumbersTabActivity;->setupSim2Tab()V

    goto :goto_0

    .line 99
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 221
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 222
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 224
    :cond_0
    return-void
.end method
