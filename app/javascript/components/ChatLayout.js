import React from "react"
import PropTypes from "prop-types"
import { Layout, Menu, Icon, Mention } from 'antd';
const { Header, Content, Footer, Sider } = Layout;

import ChatList from './ChatList';

class ChatLayout extends React.Component {

  render() {
    return (
      <Layout>
        <Sider style={{ overflow: 'hidden', height: '520px', background: '#FFFFFF' }}>
          <ChatList></ChatList>
        </Sider>
        <Layout>
          <Content style={{ overflow: 'initial' }}>
            <div style={{ height: '420px', width: '100%' }}>
              sdfdsf
            </div>
            <div style={{ background: '#fff' }}>
              <Mention
                style={{ width: '100%', height: 100 }}
                suggestions={['afc163', 'benjycui', 'yiminghe', 'jljsj33', 'dqaria', 'RaoHai']}
                multiLines
              />
            </div>
          </Content>
        </Layout>
      </Layout>
    );
  }
}

ChatLayout.propTypes = {
  greeting: PropTypes.string
};
export default ChatLayout
