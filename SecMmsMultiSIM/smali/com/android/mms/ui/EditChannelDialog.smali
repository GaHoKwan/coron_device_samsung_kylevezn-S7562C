.class public Lcom/android/mms/ui/EditChannelDialog;
.super Landroid/app/AlertDialog;
.source "EditChannelDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;
    }
.end annotation


# static fields
.field public static final MODE_CREATE:I = 0x0

.field public static final MODE_EDIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/EditChannelDialog"

.field private static final multiSimNum:I


# instance fields
.field private final mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

.field private mChannelId:Ljava/lang/String;

.field private mChannelIdEdit:Landroid/widget/EditText;

.field private mChannelName:Ljava/lang/String;

.field private mChannelNameEdit:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mEnableCheckBox:Landroid/widget/CheckBox;

.field private mEnabled:Z

.field private mID:Ljava/lang/Long;

.field private mIdWatcher:Landroid/text/TextWatcher;

.field private mMode:I

.field private mSaveButton:Landroid/widget/Button;

.field private mSimSlot:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/EditChannelDialog;->multiSimNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;I)V
    .locals 8
    .parameter "context"
    .parameter "callback"
    .parameter "simSlot"

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/EditChannelDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4
    .parameter "context"
    .parameter "callback"
    .parameter "id"
    .parameter "channelId"
    .parameter "channelName"
    .parameter "bEnabled"
    .parameter "simSlot"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    .line 234
    new-instance v0, Lcom/android/mms/ui/EditChannelDialog$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/EditChannelDialog$1;-><init>(Lcom/android/mms/ui/EditChannelDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mIdWatcher:Landroid/text/TextWatcher;

    .line 91
    iput-object p1, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/mms/ui/EditChannelDialog;->mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    .line 93
    iput-object p3, p0, Lcom/android/mms/ui/EditChannelDialog;->mID:Ljava/lang/Long;

    .line 94
    iput-object p4, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelName:Ljava/lang/String;

    .line 96
    iput-boolean p6, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnabled:Z

    .line 97
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    .line 101
    :cond_0
    iput p7, p0, Lcom/android/mms/ui/EditChannelDialog;->mSimSlot:I

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/EditChannelDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/EditChannelDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    return-object p1
.end method

.method private onReferenceViews(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const v1, 0x7f0e0062

    const/4 v2, 0x0

    .line 142
    const v0, 0x7f0e005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    .line 143
    const v0, 0x7f0e0061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 147
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Landroid/widget/CheckBox;

    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mIdWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 162
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 166
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 167
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, channelName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, channelId:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mEnableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    .line 174
    .local v6, bChecked:Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0a013e

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHANNEL_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mSimSlot:I

    invoke-static {v0, v2, v1}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    iget v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f0a013f

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 191
    :cond_4
    if-eqz v6, :cond_6

    .line 192
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 197
    .local v10, sharedPref:Landroid/content/SharedPreferences;
    const-string v9, "pref_cb_my_channel_max_count"

    .line 198
    .local v9, preference_max:Ljava/lang/String;
    iget v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mSimSlot:I

    if-eqz v0, :cond_5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mSimSlot:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 202
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v10, v9, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 204
    .local v7, cb_channel_max:I
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;I)I

    move-result v8

    .line 205
    .local v8, checkedCount:I
    if-lt v8, v7, :cond_6

    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0099

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    const/4 v6, 0x0

    .line 213
    .end local v7           #cb_channel_max:I
    .end local v8           #checkedCount:I
    .end local v9           #preference_max:Ljava/lang/String;
    .end local v10           #sharedPref:Landroid/content/SharedPreferences;
    :cond_6
    iget v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mID:Ljava/lang/Long;

    if-eqz v6, :cond_7

    const/4 v4, 0x1

    :goto_1
    iget v5, p0, Lcom/android/mms/ui/EditChannelDialog;->mSimSlot:I

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ChannelUtils;->modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;II)Z

    .line 219
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mCallback:Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;

    iget v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    iget-object v4, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelId:Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/ui/EditChannelDialog;->mSimSlot:I

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/android/mms/ui/EditChannelDialog$OnMyChannelSetListener;->onMyChannelSet(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 214
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 216
    :cond_8
    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_9

    const/4 v0, 0x1

    :goto_3
    iget v4, p0, Lcom/android/mms/ui/EditChannelDialog;->mSimSlot:I

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 110
    iget v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 111
    const v0, 0x7f0a013c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->setTitle(I)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a010f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v4, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 117
    const/4 v2, -0x2

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0a013a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030014

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->onReferenceViews(Landroid/view/View;)V

    .line 124
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mChannelIdEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 133
    return-void

    .line 113
    :cond_1
    const v0, 0x7f0a013b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/EditChannelDialog;->setTitle(I)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleId"

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method
