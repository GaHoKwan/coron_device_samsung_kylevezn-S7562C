.class public Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public accountType:Ljava/lang/String;

.field public address:Ljava/lang/CharSequence;

.field public callOutDuraton:J

.field public final callTypes:[I

.field public cdnipNumber:Ljava/lang/String;

.field public cnapName:Ljava/lang/String;

.field public contactId:J

.field public final contactUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final date:J

.field public final duration:J

.field public durationSim2:J

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final geocode:Ljava/lang/String;

.field public final id:I

.field public isVoLTEEnabled:Z

.field public final logType:I

.field public msgId:Ljava/lang/String;

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;

.field public remindMeLaterSet:I

.field public serviceType:I

.field public sharedFilePath:Ljava/lang/String;

.field public simcardId:I

.field public simnum:I


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V
    .locals 4
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "address"
    .parameter "msgId"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "simnum"
    .parameter "contactId"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 62
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 64
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 65
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 67
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 175
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 176
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 177
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 178
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 179
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 180
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 181
    iput-object p8, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 182
    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 183
    iput-wide p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 184
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 185
    move/from16 v0, p15

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 186
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 187
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 188
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 189
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 190
    move/from16 v0, p19

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 191
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 192
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->msgId:Ljava/lang/String;

    .line 193
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    move/from16 v0, p19

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 196
    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V
    .locals 22
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "address"
    .parameter "msgId"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "contactId"

    .prologue
    .line 120
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-wide/from16 v20, p19

    invoke-direct/range {v0 .. v21}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    .line 122
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;IJZ)V
    .locals 4
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "address"
    .parameter "msgId"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "cnapName"
    .parameter "serviceType"
    .parameter "cdnipNumber"
    .parameter "simnum"
    .parameter "contactId"
    .parameter "isVoLTEEnabled"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 62
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 64
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 65
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 67
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 144
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 145
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 146
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 147
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 148
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 149
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 150
    iput-object p8, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 151
    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 152
    iput-wide p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 153
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 154
    move/from16 v0, p15

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 155
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 156
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 157
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 158
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 159
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    .line 160
    move/from16 v0, p20

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    .line 161
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cdnipNumber:Ljava/lang/String;

    .line 162
    move/from16 v0, p22

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 163
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 164
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->msgId:Ljava/lang/String;

    .line 165
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    move/from16 v0, p22

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 168
    :cond_0
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 169
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;JZ)V
    .locals 26
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "address"
    .parameter "msgId"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "cnapName"
    .parameter "serviceType"
    .parameter "cdnipNumber"
    .parameter "contactId"
    .parameter "isVoLTEEnabled"

    .prologue
    .line 128
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-wide/from16 v23, p22

    move/from16 v25, p24

    invoke-direct/range {v0 .. v25}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;IJZ)V

    .line 130
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 4
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "address"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "serviceType"
    .parameter "cnapName"
    .parameter "cdnipNumber"
    .parameter "contactId"
    .parameter "isVoLTEEnabled"

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 62
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 64
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 65
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 67
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 265
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 266
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 267
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 268
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 269
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 270
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 271
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 272
    iput-wide p8, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 273
    iput-wide p10, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 274
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 275
    move/from16 v0, p14

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 276
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 277
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 278
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 279
    move/from16 v0, p12

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 280
    move/from16 v0, p18

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    .line 281
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cnapName:Ljava/lang/String;

    .line 282
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cdnipNumber:Ljava/lang/String;

    .line 283
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 284
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 286
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 21
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"

    .prologue
    .line 112
    const-string v4, ""

    const/4 v5, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    invoke-direct/range {v0 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V

    .line 114
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V
    .locals 22
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "simnum"

    .prologue
    .line 136
    const-string v4, ""

    const/4 v5, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move/from16 v19, p17

    invoke-direct/range {v0 .. v21}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    .line 138
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V
    .locals 4
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "simnum"
    .parameter "callOutDuraton"

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 62
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 64
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 65
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 67
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 202
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 203
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 204
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 205
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 206
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 207
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 208
    iput-wide p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 209
    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 210
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 211
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 212
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 213
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 214
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 215
    iput p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 216
    move/from16 v0, p17

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 217
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    add-int/lit8 v2, p17, -0x1

    iput v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 220
    :cond_0
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 221
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "simnum"
    .parameter "shardFilePath"

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 64
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 315
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 316
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 317
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 318
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 319
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 320
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 321
    iput-wide p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 322
    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 323
    iput-object p12, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 324
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 325
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 326
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 327
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 328
    iput p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 329
    move/from16 v0, p17

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 330
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->sharedFilePath:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "serviceType"
    .parameter "cnapName"
    .parameter "cdnipNumber"
    .parameter "isVoLTEEnabled"

    .prologue
    .line 229
    const-string v4, ""

    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v23, p20

    invoke-direct/range {v0 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 231
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "accountType"

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    .line 58
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->address:Ljava/lang/CharSequence;

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactId:J

    .line 64
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->durationSim2:J

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    .line 293
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 294
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 295
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 296
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 297
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 298
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    .line 299
    iput-wide p7, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 300
    iput-wide p9, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    .line 301
    iput-object p12, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 302
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberType:I

    .line 303
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 304
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 305
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 306
    iput p11, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    .line 307
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->accountType:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJI)V
    .locals 21
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"

    .prologue
    .line 94
    const/4 v1, -0x1

    const-string v4, ""

    const/4 v5, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v0 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "serviceType"
    .parameter "cnapName"
    .parameter "cdnipNumber"
    .parameter "isVoLTEEnabled"

    .prologue
    .line 239
    const/4 v1, -0x1

    const-string v4, ""

    const-string v13, ""

    const/4 v14, 0x0

    const-string v15, ""

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v18, p11

    move-object/from16 v19, p12

    move-object/from16 v20, p13

    move/from16 v23, p14

    invoke-direct/range {v0 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 21
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"

    .prologue
    .line 103
    const/4 v1, -0x1

    const-string v4, ""

    const/4 v5, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    invoke-direct/range {v0 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;J)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "geocode"
    .parameter "callTypes"
    .parameter "date"
    .parameter "duration"
    .parameter "logType"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"
    .parameter "contactUri"
    .parameter "photoUri"
    .parameter "serviceType"
    .parameter "cnapName"
    .parameter "cdnipNumber"
    .parameter "isVoLTEEnabled"

    .prologue
    .line 248
    const/4 v1, -0x1

    const-string v4, ""

    const-wide/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v23, p19

    invoke-direct/range {v0 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;JZ)V

    .line 250
    return-void
.end method
