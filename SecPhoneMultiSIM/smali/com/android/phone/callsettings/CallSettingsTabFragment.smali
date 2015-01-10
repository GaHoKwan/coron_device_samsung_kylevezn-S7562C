.class public Lcom/android/phone/callsettings/CallSettingsTabFragment;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallSettingsTabFragment.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field public static sim1Name:Ljava/lang/String;

.field public static sim2Name:Ljava/lang/String;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mMenuId:I

.field private mSelectedTabPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    return-void
.end method

.method public static getSimName(I)Ljava/lang/String;
    .locals 3
    .parameter "simId"

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, simName:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 173
    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/PhoneDualSimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 176
    :cond_0
    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneDualSimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setupTab(Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 139
    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const-string v1, "CallSettingTab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    :cond_0
    :goto_0
    const-string v1, "CallSettingsTabFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupTab "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 150
    new-instance v1, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ipc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/IpCall;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 160
    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 161
    iget v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-ne v1, p2, :cond_3

    .line 162
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0, v5}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 167
    :goto_1
    return-void

    .line 144
    :cond_1
    sget-object v1, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "CallSettingTab"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 154
    :cond_2
    const-string v0, "CallSettingsTabFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupTab : no menu  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v2, "CallSettingsTabFragment"

    const-string v3, "oncreate"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    .line 92
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 94
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "TabTitleString"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    const-string v2, "CallSettingMenu"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mMenuId:I

    .line 103
    if-eqz p1, :cond_3

    .line 104
    const-string v2, "selected_tab_position"

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    .line 110
    :goto_0
    invoke-static {v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    .line 111
    invoke-static {v5}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_2

    .line 115
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 116
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim1Name:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->setupTab(Ljava/lang/String;I)V

    .line 117
    :cond_1
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 118
    sget-object v2, Lcom/android/phone/callsettings/CallSettingsTabFragment;->sim2Name:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/callsettings/CallSettingsTabFragment;->setupTab(Ljava/lang/String;I)V

    .line 120
    :cond_2
    return-void

    .line 107
    :cond_3
    iput v6, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 124
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    .line 133
    const/4 v2, 0x1

    .line 135
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "selected_tab_position"

    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    :cond_0
    return-void
.end method
