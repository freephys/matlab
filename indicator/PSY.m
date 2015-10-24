function PSYValue=PSY(Price,Length)
%----------------------�˺�����������PSYָ��(������ָ��)-------------------
%----------------------------------��д��--------------------------------
%Lian Xiangbin(����,785674410@qq.com),DUFE,2014
%----------------------------------�ο�----------------------------------
%[1]����֤ȯ.����ָ���Ż���ʱ��10��30������,2010-12-23
%[2]����ʤ.ָ�꾫�ͣ����似��ָ�꾫��������.������ѧ������,2004��01�µ�1��
%[3]��������.24������ָ�꾫�⽲��
%[4]ͬ��˳.PSYָ���㷨
%----------------------------------���----------------------------------
%������PSYָ���Ǵ�Ӣ��Phycholoigical Lineֱ������ģ����о�Ͷ���߶���
%���ǵ�������������������ָ�꣬��һ����������ǵ���ָ�꣬�����г�������
%�Ƶ����о���һ���Ĳο����塣������PSYָ����һ�ֽ������о�Ͷ��������
%��������ϣ�����ĳ���ڼ���Ͷ�����������򷽺���������������ʵ����������
%֤ȯ��һ��ο�����ָ�ꡣ ��Ϊ�����г����ǵ�ָ�꣬PSYָ������ʱ��ĽǶ�
%�ϼ���N���ڵĶ�����������������г�Ŀǰ����ǿ�ƻ����ƣ��Ƿ��ڳ����
%����״̬������Ҫ��ͨ������N�ڼ۸��ָ�����������Ķ���������Ͷ���ߵ���
%��������������ӳ�г�δ����չ���Ƽ��۸��Ƿ���ڹ��ȵ��ǵ���Ϊ��ΪͶ����
%����֤ȯ�ṩ�ο��������ж����Ǻ��µ��������̼�Ϊ��׼�����㵱ǰBar����
%���������һBar���̼۸ߣ���Ϊ���ǣ�����һBar���̼۵ͣ���Ϊ�µ���
%----------------------------------�����÷�------------------------------
%1)PSY��50���ϱ�ʾ�г�Ϊ��ͷ�г�������Ϊ��ͷ�г�
%2)��PSYС��25ʱ���������ڼ۸����ǵ��������٣����ڳ���״̬��������;
%  ��PSY����75ʱ���������ڼ۸��µ����������٣����ڳ���״̬��������
%3)��PSY�ϴ���M�գ�һ����Ϊ6�գ�����ʱ���룬�´������ʱ����
%�����÷�������ο�
%----------------------------------���ú���------------------------------
%PSYValue=PSY(Price,Length)
%----------------------------------����----------------------------------
%Price-�۸����У�����ΪOpen��High��Low��Close������Close
%Length-����ʱ�����ǵ����ڣ�����12��Bar
%----------------------------------���----------------------------------
%PSYValue-������ָ��

PSYValue=zeros(length(Price),1);
PSYValue(1:Length)=50;
for i=Length+1:length(Price)
    PSYValue(i)=sum(Price(i-Length+1:i)>Price(i-Length:i-1))/Length*100;
end
end
